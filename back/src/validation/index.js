function validate(validators){
    
    if(!Array.isArray(validators) && validators.schema && validators.source){
      validators = [validators];
    }

    return async (request, response, next) => {

      const validations = validators.map(({schema, source}) => {
        return schema.validateAsync(request[source]);
      });

      await Promise.all(validations)
        .then(() => next())
        .catch(error => response.status(400).json({ error: error.message }));
    }
  }
  
  module.exports = validate;
$(document).ready(function(){
  $("#new_user").form({
    on: 'blur',
    inline: true,
    fields: {
      name: {
        identifier: 'user[name]',
        rules: [
          {
            type: 'empty',
            prompt: 'Please enter a name'
          },
          {
            type: 'maxLength[100]',
            prompt: 'Name must not exceed 100 characters long'
          }
        ]
      },
      uesrname: {
        identifier: 'user[username]',
        rules: [
          {
            type: 'empty',
            prompt: 'Please enter a username'
          },
          {
            type: 'maxLength[100]',
            prompt: 'Username must not exceed 100 characters long'
          }
        ]
      },
      password: {
        identifier: 'user[password]',
        rules: [
          {
            type: 'empty',
            prompt: 'Please enter a password'
          },
          {
            type: 'minLength[6]',
            prompty: 'Password should be at least 6 characters long'
          }
        ]
      },
      password_confirmation: {
        identifier: 'user[password_confirmation]',
        rules: [
          {
            type: 'empty',
            prompt: 'Please confirm your password'
          },
          {
            type: 'match[user[password]]',
            prompt: 'Password and confirmation password do not match'
          }

        ]
      }
    }
  });
});
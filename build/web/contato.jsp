

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>

            body{
                background-color: #6E13C8;
            }
            .container {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .content {
                width: 360px;
                height: 40px;
                box-shadow: 2px 4px 10px rgba(0, 0, 0, .2);
                border-radius: 60px;
                overflow: hidden;
            }

            .subscription {
                position: relative;
                width: 100%;
                height: 100%;
            }

            .subscription .add-email{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border: none;
                outline: none;
                padding: 0 20px;
            }

            .subscription .submit-email {
                position: absolute;
                top: 0;
                right: 0;
                height: calc(100% - 2px);
                width: 100px;
                border: none;
                border-radius: 60px;
                outline: none;
                margin: 1px;
                padding: 0 20px;
                cursor: pointer;
                background: #E6910E;
                color: #6E13C8;

                transition: width .35s ease-in-out,
                    background .35s ease-in-out;
            }

            .subscription.done .submit-email {
                width: calc(100% - 2px);
                background: #80F280;
            }

            .subscription .submit-email .before-submit,
            .subscription .submit-email .after-submit {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                text-align: center;
                line-height: 38px;
                transition: visibility .35s ease-in-out,
                    opacity .35s ease-in-out;
            }

            .subscription.done .submit-email .before-submit,
            .subscription:not(.done) .submit-email .after-submit {
                visibility: hidden;
                opacity: 0;
            }

            .subscription .submit-email .after-submit {
                transition-delay: .35s;
            }

            .subscription:not(.done) .submit-email .before-submit,
            .subscription.done .submit-email .after-submit {
                visibility: visible;
                opacity: 1;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contato</title>
        <link rel="icon" type="image/x-icon" href="favicon.ico">
    </head>
    <body>

        <div class="container">
            <div class="content">
                <form class="subscription">
                    <input class="add-email" type="email" placeholder="seuemail@gmail.com">
                    <button class="submit-email" type="button">
                        <span class="before-submit" style=""strong>Inscreva-se</strong></span>
                        <span class="after-submit">Agradecemos por sua inscrição!</span>
                    </button>

                    <script>
                        document.querySelector('.submit-email').addEventListener('mousedown', (e) => {
                            e.preventDefault();
                            document.querySelector('.subscription').classList.add('done');
                            setTimeout(() => {
                                window.location.href = 'index.jsp';
                            }, 3000);
                        });

                    </script>
                </form>
            </div>
        </div>
    </body>
</html>

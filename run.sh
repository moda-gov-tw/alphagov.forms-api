docker run -it \
    --name govuk_form_api \
    --hostname govuk_form_api \
    -e RAILS_ENV=development \
    -e DATABASE_URL="postgres://rails:password@db/rails" \
    --link form_db:db \
    --link form_redis:redis \
    --user root \
    -p 9292:9292 \
    govuk-form-api sh

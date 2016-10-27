# Cron Settings reminder

function cron_help() {
  echo "# .---------------- minute (0 - 59)"
  echo "# |  .------------- hour (0 - 23)"
  echo "# |  |  .---------- day of month (1 - 31)"
  echo "# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ..."
  echo "# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat"
  echo "# |  |  |  |  |"
  echo "# *  *  *  *  * user-name  command to be executed"
}

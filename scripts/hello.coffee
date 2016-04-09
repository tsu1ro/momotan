cronJob = require('cron').CronJob

module.exports = (robot) ->
  try {
    cronjob = new cronJob(
    cronTime: "4 * * * * *"
    start:  true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send{room: "#momotan"}, "おはようございます"
    )
  } catch(ex){
    console.log("cron pattern not valid");
  }
  
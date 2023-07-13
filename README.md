# PXxlogger
Install

 pod 'PXxlogger'



Use

    PXFileLoggerConfig *config = [[PXFileLoggerConfig alloc] init];
    // 存储 7 天
    config.maxDuration = 7 * 24 * 60 * 60;
    config.level = ATHLogLevelAll;

    [PXXLoggerService configFileLogger:config];

     PXXLOG_INFO("PXxlogger", @"this is user log info");




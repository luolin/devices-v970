.class Lcom/mediatek/audioprofile/AudioProfileService$4;
.super Landroid/database/ContentObserver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    .line 350
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    monitor-enter v7

    .line 351
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 352
    .local v0, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v6, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 353
    .local v1, activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 354
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 357
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "notification_sound"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, uriString:Ljava/lang/String;
    if-nez v5, :cond_3

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200()Landroid/net/Uri;

    move-result-object v4

    .line 360
    .local v4, systemUri:Landroid/net/Uri;
    :goto_0
    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v6, :cond_0

    if-nez v4, :cond_1

    :cond_0
    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 362
    :cond_1
    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 363
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    invoke-static {v6, v8, v9, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 364
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v4           #systemUri:Landroid/net/Uri;
    .end local v5           #uriString:Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v7

    .line 405
    return-void

    .line 358
    .restart local v5       #uriString:Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 366
    .restart local v4       #systemUri:Landroid/net/Uri;
    :cond_4
    const-string v6, "AudioProfileService"

    const-string v8, "Notification changed by itself, do nothing!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v0           #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v1           #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v4           #systemUri:Landroid/net/Uri;
    .end local v5           #uriString:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 370
    .restart local v0       #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v1       #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_5
    :try_start_1
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 373
    :cond_6
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "notification_sound"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 374
    .restart local v5       #uriString:Ljava/lang/String;
    if-nez v5, :cond_9

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200()Landroid/net/Uri;

    move-result-object v4

    .line 376
    .restart local v4       #systemUri:Landroid/net/Uri;
    :goto_2
    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v6, :cond_7

    if-nez v4, :cond_8

    :cond_7
    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v6, :cond_a

    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 378
    :cond_8
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, generalKey:Ljava/lang/String;
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, outdoorKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v6, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iput-object v4, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 381
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v6, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iput-object v4, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 382
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v8, 0x2

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    invoke-static {v6, v2, v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 383
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v8, 0x2

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    invoke-static {v6, v3, v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 384
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 374
    .end local v2           #generalKey:Ljava/lang/String;
    .end local v3           #outdoorKey:Ljava/lang/String;
    .end local v4           #systemUri:Landroid/net/Uri;
    :cond_9
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 386
    .restart local v4       #systemUri:Landroid/net/Uri;
    :cond_a
    const-string v6, "AudioProfileService"

    const-string v8, "Notification changed by itself, do nothing!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 388
    .end local v4           #systemUri:Landroid/net/Uri;
    .end local v5           #uriString:Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 391
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "notification_sound"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .restart local v5       #uriString:Ljava/lang/String;
    if-nez v5, :cond_e

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200()Landroid/net/Uri;

    move-result-object v4

    .line 394
    .restart local v4       #systemUri:Landroid/net/Uri;
    :goto_3
    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v6, :cond_c

    if-nez v4, :cond_d

    :cond_c
    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v6, :cond_f

    iget-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 396
    :cond_d
    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 397
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    invoke-static {v6, v8, v9, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 398
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 392
    .end local v4           #systemUri:Landroid/net/Uri;
    :cond_e
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    .line 400
    .restart local v4       #systemUri:Landroid/net/Uri;
    :cond_f
    const-string v6, "AudioProfileService"

    const-string v8, "Notification changed by itself, do nothing!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
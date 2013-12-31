.class public Lcom/android/settings/dormantmode/DormantModeNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DormantModeNotiReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private cancelOnGoingAlarm(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 197
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 199
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.DORMANTMODE_ONGOING_ALARM_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 200
    .local v2, sStart:Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.DORMANTMODE_ONGOING_ALARM_END"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 202
    .local v1, sEnd:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 206
    return-void
.end method

.method private isSetTime(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 119
    const/4 v3, 0x0

    .line 121
    .local v3, isEnabled:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, c:Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int v1, v5, v6

    .line 124
    .local v1, curTime:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_start_hour"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_start_min"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    add-int v4, v5, v6

    .line 125
    .local v4, startTime:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_end_hour"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_end_min"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    add-int v2, v5, v6

    .line 127
    .local v2, endTime:I
    if-ge v4, v2, :cond_1

    .line 128
    if-lt v1, v4, :cond_0

    if-ge v1, v2, :cond_0

    .line 129
    const/4 v3, 0x1

    .line 138
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    if-le v4, v2, :cond_3

    .line 132
    if-lt v1, v2, :cond_2

    if-lt v1, v4, :cond_0

    .line 133
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 135
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setOnGoingAlarm(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 144
    .local v6, cStart:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 145
    .local v5, cEnd:Ljava/util/Calendar;
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0x3c

    add-int v18, v18, v19

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int v7, v18, v19

    .line 147
    .local v7, curTime:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "dormant_start_hour"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 148
    .local v15, startHour:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "dormant_start_min"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 149
    .local v16, startMin:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "dormant_end_hour"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 150
    .local v8, endHour:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "dormant_end_min"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 152
    .local v9, endMin:I
    mul-int/lit16 v0, v15, 0xe10

    move/from16 v18, v0

    mul-int/lit8 v19, v16, 0x3c

    add-int v17, v18, v19

    .line 153
    .local v17, startTime:I
    mul-int/lit16 v0, v8, 0xe10

    move/from16 v18, v0

    mul-int/lit8 v19, v9, 0x3c

    add-int v10, v18, v19

    .line 155
    .local v10, endTime:I
    sub-int v14, v7, v17

    .line 156
    .local v14, setStartTime:I
    sub-int v13, v7, v10

    .line 159
    .local v13, setEndTime:I
    if-lez v14, :cond_1

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    const/16 v18, 0xb

    div-int/lit16 v0, v14, 0xe10

    move/from16 v19, v0

    rsub-int/lit8 v19, v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 162
    const/16 v18, 0xc

    rem-int/lit16 v0, v14, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 163
    const/16 v18, 0xd

    rem-int/lit8 v19, v14, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 173
    :goto_0
    if-ge v10, v7, :cond_2

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    const/16 v18, 0xb

    div-int/lit16 v0, v13, 0xe10

    move/from16 v19, v0

    rsub-int/lit8 v19, v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 176
    const/16 v18, 0xc

    rem-int/lit16 v0, v13, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 177
    const/16 v18, 0xd

    rem-int/lit8 v19, v13, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 186
    :cond_0
    :goto_1
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 188
    .local v4, alarm:Landroid/app/AlarmManager;
    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.settings.DORMANTMODE_ONGOING_ALARM_START"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 189
    .local v12, sStart:Landroid/app/PendingIntent;
    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.settings.DORMANTMODE_ONGOING_ALARM_END"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 191
    .local v11, sEnd:Landroid/app/PendingIntent;
    const/16 v18, 0x1

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v4, v0, v1, v2, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 192
    const/16 v18, 0x1

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v4, v0, v1, v2, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 193
    return-void

    .line 165
    .end local v4           #alarm:Landroid/app/AlarmManager;
    .end local v11           #sEnd:Landroid/app/PendingIntent;
    .end local v12           #sStart:Landroid/app/PendingIntent;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    const/16 v18, 0xb

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 167
    const/16 v18, 0xc

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 168
    const/16 v18, 0xd

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v19

    rem-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 178
    :cond_2
    if-le v10, v7, :cond_0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    const/16 v18, 0xb

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 181
    const/16 v18, 0xc

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 182
    const/16 v18, 0xd

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    rem-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1
.end method


# virtual methods
.method public notificationClear(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 112
    const v1, 0x7f02041d

    .line 114
    .local v1, notiID:I
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 115
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 116
    return-void
.end method

.method public notificationCreate(Landroid/content/Context;)V
    .locals 22
    .parameter "context"

    .prologue
    .line 61
    const v14, 0x7f02041d

    .line 63
    .local v14, notiID:I
    const/16 v19, 0x0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 65
    .local v16, sender:Landroid/app/PendingIntent;
    const-string v19, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 66
    .local v12, nm:Landroid/app/NotificationManager;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v13, noti:Landroid/app/Notification$Builder;
    const v19, 0x7f02041d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f09129a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f09129a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "dormant_always"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 71
    .local v8, allways:I
    if-nez v8, :cond_1

    .line 72
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/dormantmode/DormantModeNotiReceiver;->setOnGoingAlarm(Landroid/content/Context;)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "dormant_start_hour"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 75
    .local v6, Starthour:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "dormant_end_hour"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 76
    .local v4, Endhour:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "dormant_start_min"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 77
    .local v7, Startmin:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "dormant_end_min"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, Endmin:I
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/android/settings/dormantmode/DormantModeUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 79
    .local v17, starttime:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/settings/dormantmode/DormantModeUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 80
    .local v10, endtime:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/String;

    invoke-direct/range {v18 .. v18}, Ljava/lang/String;-><init>()V

    .line 81
    .local v18, timeString:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 83
    .local v9, contextString:Ljava/lang/String;
    const-string v19, "%s - %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09129c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/dormantmode/DormantModeNotiReceiver;->isSetTime(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 88
    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 89
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v13, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 90
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v14, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 108
    .end local v4           #Endhour:I
    .end local v5           #Endmin:I
    .end local v6           #Starthour:I
    .end local v7           #Startmin:I
    .end local v9           #contextString:Ljava/lang/String;
    .end local v10           #endtime:Ljava/lang/StringBuilder;
    .end local v17           #starttime:Ljava/lang/StringBuilder;
    .end local v18           #timeString:Ljava/lang/String;
    :goto_0
    return-void

    .line 92
    .restart local v4       #Endhour:I
    .restart local v5       #Endmin:I
    .restart local v6       #Starthour:I
    .restart local v7       #Startmin:I
    .restart local v9       #contextString:Ljava/lang/String;
    .restart local v10       #endtime:Ljava/lang/StringBuilder;
    .restart local v17       #starttime:Ljava/lang/StringBuilder;
    .restart local v18       #timeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 93
    .local v11, n:Landroid/app/Notification;
    const/16 v19, 0x10

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 95
    new-instance v15, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f04007c

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v15, remoteViews:Landroid/widget/RemoteViews;
    const v19, 0x7f0b015f

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    iput-object v15, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 98
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 99
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->priority:I

    .line 100
    invoke-virtual {v12, v14, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 104
    .end local v4           #Endhour:I
    .end local v5           #Endmin:I
    .end local v6           #Starthour:I
    .end local v7           #Startmin:I
    .end local v9           #contextString:Ljava/lang/String;
    .end local v10           #endtime:Ljava/lang/StringBuilder;
    .end local v11           #n:Landroid/app/Notification;
    .end local v15           #remoteViews:Landroid/widget/RemoteViews;
    .end local v17           #starttime:Ljava/lang/StringBuilder;
    .end local v18           #timeString:Ljava/lang/String;
    :cond_1
    const v19, 0x7f09129b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 105
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v13, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 106
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v14, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.settings.DORMANTMODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.settings.DORMANTMODE_ONGOING_ALARM_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.settings.DORMANTMODE_ONGOING_ALARM_END"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 44
    .local v2, state:I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    invoke-static {p1}, Lcom/android/settings/dormantmode/DormantModeUtils;->isAllOptionDisabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/dormantmode/DormantModeNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    .line 57
    .end local v2           #state:I
    :cond_1
    :goto_0
    return-void

    .line 47
    .restart local v2       #state:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/dormantmode/DormantModeNotiReceiver;->cancelOnGoingAlarm(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/dormantmode/DormantModeNotiReceiver;->notificationClear(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    .end local v2           #state:I
    :cond_3
    const-string v3, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v1, dormantModeIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DormantmodeSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

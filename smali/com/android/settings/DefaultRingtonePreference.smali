.class public Lcom/android/settings/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mResultListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

.field private mRingtone:Lcom/android/settings/SoundSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 136
    new-instance v0, Lcom/android/settings/DefaultRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DefaultRingtonePreference$1;-><init>(Lcom/android/settings/DefaultRingtonePreference;)V

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .line 43
    return-void
.end method


# virtual methods
.method public directRingtone()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 128
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 129
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 115
    .local v0, result:Ljava/lang/Boolean;
    if-ne p2, v3, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SoundSettings;->onMusicPickerChosen(I)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v3, :cond_1

    .line 120
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 121
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    invoke-virtual {v1}, Lcom/android/settings/SoundSettings;->finish()V

    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 53
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 57
    :cond_0
    const-string v0, "neutral_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f091312

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 10
    .parameter "ringtoneUri"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    new-instance v9, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 76
    .local v9, mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-virtual {v9, p1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 103
    .end local v9           #mRingtoneManager:Landroid/media/RingtoneManager;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v9       #mRingtoneManager:Landroid/media/RingtoneManager;
    :cond_1
    const/4 v6, 0x0

    .line 82
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, mFilePath:Ljava/lang/String;
    new-instance v8, Lcom/android/settings/RingtoneRecommender;

    invoke-direct {v8}, Lcom/android/settings/RingtoneRecommender;-><init>()V

    .line 87
    .local v8, mRecommender:Lcom/android/settings/RingtoneRecommender;
    invoke-virtual {v8, v7}, Lcom/android/settings/RingtoneRecommender;->open(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {v8}, Lcom/android/settings/RingtoneRecommender;->is_extractable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    invoke-virtual {v8, v0}, Lcom/android/settings/RingtoneRecommender;->doExtract(Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v7           #mFilePath:Ljava/lang/String;
    .end local v8           #mRecommender:Lcom/android/settings/RingtoneRecommender;
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    .restart local v7       #mFilePath:Ljava/lang/String;
    .restart local v8       #mRecommender:Lcom/android/settings/RingtoneRecommender;
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v8, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 92
    invoke-virtual {v8}, Lcom/android/settings/RingtoneRecommender;->close()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    .end local v7           #mFilePath:Ljava/lang/String;
    .end local v8           #mRecommender:Lcom/android/settings/RingtoneRecommender;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public setObject(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "soundSettings"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    .line 133
    return-void
.end method

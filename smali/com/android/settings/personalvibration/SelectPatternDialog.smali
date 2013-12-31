.class public Lcom/android/settings/personalvibration/SelectPatternDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field ButtonCenter:Landroid/widget/Button;

.field mCurrentSelection:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mExistingUri:Ljava/lang/String;

.field private mFlag:Z

.field private mFromContact:Ljava/lang/Boolean;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field mOkBtn:Landroid/widget/Button;

.field private mOlderPosition:I

.field private mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

.field private mShowDefault:Ljava/lang/Boolean;

.field private mStaticItem:I

.field mSupportFolderType:Z

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 76
    iput v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 77
    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 84
    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 85
    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->ButtonCenter:Landroid/widget/Button;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 90
    iput-boolean v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    return-void
.end method

.method private PositiveButtonClick()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int v10, v0, v1

    .line 549
    .local v10, position:I
    if-ne v10, v12, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 but from Contacts"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 553
    .local v11, resultIntent:Landroid/content/Intent;
    invoke-virtual {p0, v12, v11}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 559
    .end local v11           #resultIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 560
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 561
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 562
    .local v7, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 564
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 566
    .restart local v11       #resultIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, pickedUriString:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 568
    .local v8, pickedUri:Landroid/net/Uri;
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v12, v11}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 574
    .end local v8           #pickedUri:Landroid/net/Uri;
    .end local v9           #pickedUriString:Ljava/lang/String;
    .end local v11           #resultIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 575
    return-void

    .line 556
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #index:I
    :cond_1
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 so break"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #index:I
    :cond_2
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : OK button is clicked before uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "editable"

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, length:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 377
    if-gtz v0, :cond_0

    .line 378
    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 389
    return-void
.end method

.method public deletePattern(I)Z
    .locals 9
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 284
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePattern() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 288
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 289
    .local v8, id:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 291
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 295
    .local v7, count:I
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 540
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    .line 542
    iput-boolean v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    .line 544
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentSelection()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 399
    const/4 v7, -0x1

    .line 400
    .local v7, keyID:I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, temp:Ljava/lang/String;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSelection() temp : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-nez v9, :cond_0

    .line 403
    const-string v9, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 409
    iget-object v9, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 415
    :cond_1
    if-nez v9, :cond_3

    move v0, v10

    .line 448
    :goto_0
    return v0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 411
    const-string v0, "SelectPatternDialog"

    const-string v1, "getCurrentSelection(),  (mFromContact && mExistingUri == null) is true, return 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x0

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 420
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 428
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    if-eqz v6, :cond_9

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 437
    :cond_5
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v7, v0, :cond_7

    .line 438
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 439
    .local v8, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSelection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v0, v8

    goto/16 :goto_0

    .end local v8           #position:I
    :cond_6
    move v0, v10

    .line 430
    goto/16 :goto_0

    .line 443
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 445
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    move v0, v10

    .line 448
    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 456
    packed-switch p2, :pswitch_data_0

    .line 506
    :goto_0
    return-void

    .line 458
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int v11, v0, v1

    .line 459
    .local v11, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, -0x1

    if-ne v11, v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 but from Contacts"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 464
    .local v12, resultIntent:Landroid/content/Intent;
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto :goto_0

    .line 468
    .end local v12           #resultIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 so break"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 473
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 474
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 475
    .local v8, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 479
    .restart local v12       #resultIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 480
    .local v10, pickedUriString:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 481
    .local v9, pickedUri:Landroid/net/Uri;
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 482
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 487
    .end local v9           #pickedUri:Landroid/net/Uri;
    .end local v10           #pickedUriString:Ljava/lang/String;
    .end local v12           #resultIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 484
    :cond_2
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : OK button is clicked before uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 491
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v11           #position:I
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(I)V

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 496
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 497
    .local v7, i:Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.personalvibration.PersonalVibration"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    const-string v0, "android.intent.extra.pattern.FROM_CONTACT"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    const/high16 v0, 0x200

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 502
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->startActivity(Landroid/content/Intent;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 221
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 222
    .local v1, menuItemIndex:I
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected] :  info.position, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v5, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    packed-switch v1, :pswitch_data_0

    .line 240
    :goto_0
    return v7

    .line 227
    :pswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->deletePattern(I)Z

    .line 228
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 229
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 231
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 236
    :pswitch_1
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 99
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    .line 102
    const-string v7, "show_default"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    .line 105
    const-string v7, "android.intent.extra.pattern.EXISTING_URI"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 108
    const-string v7, "useLightTheme"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 111
    .local v3, isLightTheme:Z
    if-eqz v3, :cond_0

    .line 112
    const-string v7, "SelectPatternDialog"

    const-string v8, "onCreate() : useLightTheme is true so set light theme"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v7, 0x1030333

    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setTheme(I)V

    .line 116
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    new-instance v7, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-direct {v7, p0}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 119
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v7}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 123
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090f5d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 128
    :goto_0
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040075

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 129
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 131
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    const v7, 0x7f090173

    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 133
    const v7, 0x7f090ada

    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 134
    const v7, 0x7f090079

    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 135
    iget-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x7f0b0148

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    .line 137
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040189

    iget-object v9, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 141
    .local v5, textView:Landroid/widget/CheckedTextView;
    const-string v7, "SelectPatternDialog"

    const-string v8, "tw_select_dialog_singlechoice_holo"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const v7, 0x7f0907e0

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setTextSize(F)V

    .line 146
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 147
    .local v6, wm:Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 149
    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 154
    .local v1, density:I
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 155
    iput v11, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 158
    .end local v1           #density:I
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v5           #textView:Landroid/widget/CheckedTextView;
    .end local v6           #wm:Landroid/view/WindowManager;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 161
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    :cond_2
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setupAlert()V

    .line 166
    new-instance v7, Landroid/os/SystemVibrator;

    invoke-direct {v7}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v7

    iput v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 169
    iget v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 170
    const-string v7, "SelectPatternDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate() positoin : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v8, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v7, v8, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 173
    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v8, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 177
    :goto_1
    return-void

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090f4b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 176
    :cond_4
    const-string v7, "SelectPatternDialog"

    const-string v8, "onCreate() positoin : -1"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v5, 0x7f0900e6

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 197
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0148

    if-ne v0, v1, :cond_0

    move-object v7, p3

    .line 198
    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 200
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_1

    .line 201
    const-string v0, "SelectPatternDialog"

    const-string v1, "onCreateContextMenu] : Noting to add"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v7           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v7       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    if-ne v0, v1, :cond_2

    .line 204
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 210
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    .local v6, c:Landroid/database/Cursor;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 212
    const-string v0, "vibration_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, menu_title:Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 206
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #menu_title:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    const v1, 0x7f090992

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 207
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 305
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 306
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 248
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 251
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 252
    const-string v0, "SelectPatternDialog"

    const-string v1, "onItemClick() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 254
    .local v10, temp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 258
    .local v8, patternLong:[J
    if-eqz v8, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 261
    .end local v8           #patternLong:[J
    .end local v9           #patternString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v10           #temp:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 265
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 267
    .restart local v6       #c:Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 268
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 269
    .local v7, index:I
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 270
    .restart local v9       #patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 271
    .restart local v8       #patternLong:[J
    if-eqz v8, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 273
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    .line 279
    invoke-direct {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 582
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 583
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 586
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 587
    const-string v0, "SelectPatternDialog"

    const-string v1, "onItemSelected() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, temp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 590
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 592
    .local v9, patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 593
    .local v8, patternLong:[J
    if-eqz v8, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 596
    .end local v8           #patternLong:[J
    .end local v9           #patternString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 611
    .end local v10           #temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 600
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 602
    .restart local v6       #c:Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 603
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 604
    .local v7, index:I
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 605
    .restart local v9       #patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 606
    .restart local v8       #patternLong:[J
    if-eqz v8, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 608
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 610
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 510
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 513
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v12

    .line 514
    .local v12, ret:Z
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    .line 515
    iget-boolean v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    if-eqz v0, :cond_4

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    .line 517
    .local v7, focusedView:Landroid/view/View;
    const/4 v8, 0x0

    .line 518
    .local v8, focusedViewId:I
    if-eqz v7, :cond_1

    .line 519
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    .line 521
    :cond_1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_4

    const v0, 0x1020019

    if-eq v8, v0, :cond_2

    const v0, 0x102001a

    if-eq v8, v0, :cond_2

    const v0, 0x102001b

    if-ne v8, v0, :cond_4

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 526
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 527
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 528
    .local v9, index:I
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 529
    .local v11, patternString:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v10

    .line 530
    .local v10, patternLong:[J
    if-eqz v10, :cond_3

    .line 531
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 532
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 536
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #focusedView:Landroid/view/View;
    .end local v8           #focusedViewId:I
    .end local v9           #index:I
    .end local v10           #patternLong:[J
    .end local v11           #patternString:Ljava/lang/String;
    :cond_4
    return v12
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 614
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 183
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 395
    return-void
.end method

.method showRenameDialog(I)Z
    .locals 13
    .parameter "position"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 309
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRenameDialog() position : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 313
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.getPosition() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const v0, 0x7f0400fa

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 320
    .local v11, view:Landroid/view/View;
    const v0, 0x7f0b0288

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 321
    .local v6, EditPattern:Landroid/widget/TextView;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 322
    .local v8, id:I
    const/16 v10, 0x1a

    .line 324
    .local v10, maxLength:I
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v0, "vibration_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 327
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move-object v0, v6

    .line 328
    check-cast v0, Landroid/widget/EditText;

    new-array v1, v12, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 329
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 332
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f52

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ada

    new-instance v2, Lcom/android/settings/personalvibration/SelectPatternDialog$2;

    invoke-direct {v2, p0, v6, v8, v9}, Lcom/android/settings/personalvibration/SelectPatternDialog$2;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    new-instance v2, Lcom/android/settings/personalvibration/SelectPatternDialog$1;

    invoke-direct {v2, p0, v9, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog$1;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 362
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 365
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    .line 366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    return v12
.end method

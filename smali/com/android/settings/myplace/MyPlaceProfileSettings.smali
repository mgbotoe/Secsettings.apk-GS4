.class public Lcom/android/settings/myplace/MyPlaceProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MyPlaceProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    }
.end annotation


# instance fields
.field alert:Landroid/app/AlertDialog;

.field private helpRequest:I

.field private mAddMode:Z

.field private mAutoConnect:Landroid/preference/CheckBoxPreference;

.field private mEditMode:Z

.field private mEditName:Landroid/widget/EditText;

.field private mFlag:Z

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mId:I

.field private mIsFromHelp:Z

.field mLocationBitmap:Landroid/graphics/Bitmap;

.field private mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

.field private mMethodPreference:Landroid/preference/PreferenceScreen;

.field private mOlderPosition:I

.field private mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

.field private mSelectMethod:Landroid/preference/PreferenceScreen;

.field private mTextName:Landroid/widget/TextView;

.field private setFlag1:Z

.field private setFlag2:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 97
    new-instance v0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/myplace/MyPlaceProfileSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .line 117
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    .line 118
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 119
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 120
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 121
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 122
    iput v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mOlderPosition:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/myplace/MyPlaceProfileSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mOlderPosition:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 311
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 315
    :cond_0
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 317
    const-string v1, "key_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    .line 319
    const-string v1, "key_map"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    .line 320
    const-string v1, "key_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    .line 322
    const-string v1, "key_auto_connect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    .line 325
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    if-nez v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 342
    :cond_1
    :goto_0
    return-object v0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 330
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 333
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 336
    :cond_4
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 339
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initPlaceInfo()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 354
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0913d4

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 455
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 458
    return-void

    .line 356
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :cond_2
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 359
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gps_location"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_ap_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_ap_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_device_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bt_device_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 388
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "timestamp"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mTimestamp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_location"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 396
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 398
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_map"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$702(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 400
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_ap_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$802(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 406
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_auto_connect"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 408
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bt_device_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bt_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0
.end method

.method private isPlaceInfoChanged()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.myplace.MyPlaceProvider/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 496
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v7, 0x0

    .line 499
    .local v7, isChanged:Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 500
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 501
    const-string v0, "MyPlaceSettings"

    const-string v1, "_id is not match"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v7, 0x0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 505
    const-string v0, "MyPlaceSettings"

    const-string v1, "type is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v7, 0x1

    .line 560
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 561
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaceInfoChanged() returns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v7

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    const-string v0, "MyPlaceSettings"

    const-string v1, "mProfileName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v7, 0x1

    goto :goto_0

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps_location"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 515
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLocation is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v7, 0x1

    goto :goto_0

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "gps_latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 519
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLatitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "gps_longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 523
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLongitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 525
    :cond_6
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v0

    const-string v1, "gps_map"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->compareByteArray([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 526
    const-string v0, "MyPlaceSettings"

    const-string v1, "mByteMap is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 528
    :cond_7
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_ap_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 531
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 533
    :cond_8
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 536
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApBSSID is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 538
    :cond_9
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "wifi_frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 540
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiFrequency is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 542
    :cond_a
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "wifi_auto_connect"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 544
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiAutoConnect is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 546
    :cond_b
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_device_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 549
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtDeviceName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 551
    :cond_c
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtMacAddress is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 558
    :cond_d
    const-string v0, "MyPlaceSettings"

    const-string v1, "moveToFirst() is failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showHelpStep1Dialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1112
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1116
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1120
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_3

    .line 1124
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1126
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1127
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1130
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1131
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1132
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 1134
    :cond_3
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1137
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1139
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1143
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_3

    .line 1147
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1149
    const v0, 0x7f0b0003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1155
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 1156
    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1176
    new-instance v3, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v3, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1177
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 1178
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 1181
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 1184
    :cond_3
    return-void
.end method

.method private showHelpStep3Dialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1187
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1189
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1194
    const v0, 0x7f0b0003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1200
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 1201
    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1215
    new-instance v3, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v3, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1216
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 1217
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1219
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 1220
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1221
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 1223
    :cond_2
    return-void
.end method

.method private showHelpStep4Dialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1226
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1228
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1233
    const v0, 0x7f0b010b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1235
    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1245
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1246
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1248
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1249
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1250
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 1252
    :cond_1
    return-void
.end method

.method private updateProfile()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 462
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 463
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0913e1

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 464
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 478
    const-string v2, "MyPlaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlaceInfo.mByteMap is not null, mPlaceInfo.mByteMap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 483
    .local v1, is:Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    .local v0, LocationBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 486
    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 487
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceGpsPreference;->setGpsImage(Landroid/graphics/Bitmap;)V

    .line 490
    .end local v0           #LocationBitmap:Landroid/graphics/Bitmap;
    .end local v1           #is:Ljava/io/ByteArrayInputStream;
    :cond_1
    return-void

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 466
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0912ac

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 467
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 469
    :cond_4
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0912b0

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 471
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1066
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1067
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1069
    if-nez v3, :cond_0

    .line 1070
    const-string v0, "MyPlaceSettings"

    const-string v2, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_0
    return v1

    .line 1074
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 1075
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1077
    if-nez v0, :cond_1

    .line 1078
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1081
    goto :goto_0

    .line 1084
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 1085
    const-string v4, "MyPlaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiAvail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public compareByteArray([B[B)Z
    .locals 4
    .parameter "_data1"
    .parameter "_data2"

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, isCompareResult:Z
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 573
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareByteArray return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v0
.end method

.method getSelectedTypeIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1022
    const/4 v0, -0x1

    .line 1023
    .local v0, type:I
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1047
    :goto_0
    return v0

    .line 1025
    :pswitch_0
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_0

    .line 1026
    const/4 v0, 0x3

    goto :goto_0

    .line 1028
    :cond_0
    const/4 v0, 0x2

    .line 1029
    goto :goto_0

    .line 1031
    :pswitch_1
    const/4 v0, 0x0

    .line 1032
    goto :goto_0

    .line 1034
    :pswitch_2
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_1

    .line 1035
    const/4 v0, 0x1

    goto :goto_0

    .line 1037
    :cond_1
    const/4 v0, 0x0

    .line 1038
    goto :goto_0

    .line 1040
    :pswitch_3
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_2

    .line 1041
    const/4 v0, 0x2

    goto :goto_0

    .line 1043
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isDuplicatePlaceName()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1000
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1001
    .local v7, profileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1006
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    :cond_0
    const-string v0, "profile_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1011
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1012
    const/4 v0, 0x1

    .line 1018
    :goto_0
    return v0

    .line 1014
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1018
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 152
    const-string v2, "MyPlaceSettings"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 154
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0400e6

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b024f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0250

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    .line 175
    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 178
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 179
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 188
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 196
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->initPlaceInfo()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    return-void

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 193
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 936
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(), requestCode :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-ne p1, v3, :cond_3

    .line 939
    if-ne p2, v4, :cond_2

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 941
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "ssid"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$802(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bssid"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 943
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "frequency"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 944
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 945
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v0, v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 949
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    .line 950
    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    .line 996
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 997
    return-void

    .line 946
    :cond_2
    if-nez p2, :cond_0

    .line 947
    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    :cond_3
    if-ne p1, v6, :cond_5

    .line 953
    if-ne p2, v4, :cond_4

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 955
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "DeviceName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "MacAddress"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 957
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 958
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    .line 959
    iput v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 961
    :cond_4
    if-nez p2, :cond_1

    .line 962
    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    .line 964
    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 967
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 968
    if-ne p2, v4, :cond_6

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 970
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "DeviceName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 971
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "MacAddress"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 973
    iput v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 974
    :cond_6
    if-nez p2, :cond_1

    .line 975
    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 978
    :cond_7
    if-ne p1, v7, :cond_1

    .line 979
    if-ne p2, v4, :cond_8

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 981
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "location"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 982
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "latitude"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 983
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "longitude"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 984
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 986
    const-string v0, "map"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 987
    if-eqz v0, :cond_1

    .line 988
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_GPS_LOCATION_REQUEST, btMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v1, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$702(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    goto/16 :goto_1

    .line 991
    :cond_8
    if-nez p2, :cond_1

    .line 992
    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, HelpStep:I
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 583
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 584
    const/4 v0, 0x1

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 588
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 589
    const/4 v0, 0x2

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 593
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 594
    const/4 v0, 0x3

    .line 596
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_3

    .line 597
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 598
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 599
    const/4 v0, 0x4

    .line 601
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 602
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    .line 610
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 612
    return-void

    .line 603
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 604
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 605
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 606
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    .line 607
    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 608
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v3, 0x7f070061

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    .line 129
    invoke-virtual {p0, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setHasOptionsMenu(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 133
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    .line 134
    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "my place id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v3, "fromHelp"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    .line 136
    const-string v3, "edit_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    .line 137
    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "edit mode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "add_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    .line 139
    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add mode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "myplacehelp"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "value"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    return-void

    .line 141
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v3, "MyPlaceSettings"

    const-string v4, "Bundle is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 287
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 289
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    const v0, 0x7f120005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f090173

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 300
    const/4 v0, 0x1

    const v1, 0x7f090660

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 203
    const-string v1, "MyPlaceSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 206
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 209
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 616
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 681
    :goto_0
    return v0

    .line 619
    :sswitch_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090665

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isDuplicatePlaceName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0913de

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 632
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 635
    const-string v3, "type"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    const-string v3, "profile_name"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v3, "gps_location"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v3, "gps_latitude"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string v3, "gps_longitude"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v3, "gps_map"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 641
    const-string v3, "wifi_ap_name"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v3, "wifi_bssid"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v3, "wifi_frequency"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v3, "wifi_auto_connect"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string v3, "bt_device_name"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v3, "bt_mac_address"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v3, :cond_3

    .line 649
    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_ADDED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 655
    const-string v4, "uri"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 656
    const-string v0, "timestamp"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v0, v1

    .line 673
    goto/16 :goto_0

    .line 659
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 667
    const-string v0, "changed_id"

    iget v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    const-string v0, "timestamp"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 677
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v0, v1

    .line 678
    goto/16 :goto_0

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0b05fa -> :sswitch_1
        0x7f0b05fc -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 254
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 258
    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 259
    const-string v2, "value"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    iput-boolean v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 264
    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 265
    const-string v2, "value"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 269
    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 270
    const-string v2, "value"

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 274
    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 275
    const-string v2, "value"

    const/4 v3, 0x4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    :cond_3
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_4

    .line 278
    iput-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 280
    :cond_4
    iput v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 283
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0913df

    const v5, 0x104000a

    const/high16 v4, 0x104

    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 689
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 690
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 691
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v2

    new-instance v3, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 931
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 821
    :cond_3
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 822
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 823
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a009a

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v2

    new-instance v3, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    .line 924
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    .line 925
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 927
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 928
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v2, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    const-string v2, "MyPlaceSettings"

    const-string v3, "onResume() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 215
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-nez v2, :cond_6

    .line 219
    const-string v2, "value"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 220
    .local v1, value:I
    if-ne v1, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    if-eqz v2, :cond_3

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    .line 222
    iput-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 235
    .end local v1           #value:I
    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 236
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 237
    return-void

    .line 223
    .restart local v1       #value:I
    :cond_3
    if-ne v1, v6, :cond_4

    .line 224
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 225
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 226
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    .line 227
    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0

    .line 230
    .end local v1           #value:I
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v5, :cond_7

    .line 231
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    goto :goto_0

    .line 232
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v6, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0
.end method

.method resetPlaceInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1052
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1053
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1055
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1056
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$702(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 1057
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$802(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1060
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1061
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1063
    return-void
.end method

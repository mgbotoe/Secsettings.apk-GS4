.class public Lcom/android/settings/cloud/CloudSettingsMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private categoryDropbox:Landroid/preference/PreferenceGroup;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private dialogFragment:Landroid/app/DialogFragment;

.field private isBackupAppAvailable:Z

.field private isDropboxAvailable:Z

.field private isQuotaStorageAvailable:Z

.field private mBackUp:Landroid/preference/Preference;

.field private mCloudReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSync:Landroid/preference/Preference;

.field private mIsConnected:Z

.field private mPrefAddSamsungAccount:Landroid/preference/Preference;

.field private mPrefDocument:Landroid/preference/Preference;

.field private mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

.field private mPrefMusics:Landroid/preference/Preference;

.field private mPrefPhotos:Landroid/preference/Preference;

.field private mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

.field private mPrefSetAccount:Landroid/preference/Preference;

.field private mPrefUsage:Landroid/preference/Preference;

.field private mPrefVideos:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressTimer:Landroid/os/CountDownTimer;

.field private mQuotaStorage:Landroid/preference/Preference;

.field private mRestore:Landroid/preference/Preference;

.field private mSettings:Lcom/android/settings/cloud/CloudSettings;

.field private mStorage:Ljava/lang/String;

.field private mValidationStatus:I

.field private mVerifySamsungAccount:Landroid/preference/Preference;

.field public processAction:Ljava/lang/String;

.field private setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field toastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 74
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 185
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 190
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    .line 197
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    .line 199
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    .line 211
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 1102
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/cloud/CloudSettingsMainFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/cloud/CloudSettingsMainFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V

    return-void
.end method

.method private addSamsungAccount()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 308
    .local v9, samsungAccount:[Landroid/accounts/Account;
    if-eqz v9, :cond_0

    .line 309
    array-length v0, v9

    if-nez v0, :cond_0

    .line 311
    const-string v8, "com.osp.app.signin"

    .line 312
    .local v8, accountFilterType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 322
    .end local v8           #accountFilterType:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1223
    :cond_1
    return-void
.end method

.method private getLinkAccountSummary()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, summaryText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v1, :cond_1

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0912f8

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v1, v4}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0912f9

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0912fa

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0912fc

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0912fb

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 668
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09130b

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    :cond_1
    return-object v0

    .line 653
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    .line 656
    :cond_3
    const-string v1, ""

    goto/16 :goto_1

    .line 659
    :cond_4
    const-string v1, ""

    goto/16 :goto_2

    .line 662
    :cond_5
    const-string v1, ""

    goto :goto_3
.end method

.method private getPreferencesReference()V
    .locals 11

    .prologue
    const v10, 0x7f091306

    const v9, 0x7f091305

    const v8, 0x7f091308

    const v6, 0x7f091304

    const/4 v7, 0x0

    .line 406
    const-string v4, "category_samsungservices"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 407
    const-string v4, "category_dropbox"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 408
    const-string v4, "pref_add_samsung_account"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    .line 409
    const-string v4, "pref_dataSync"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    .line 410
    const-string v4, "pref_storage"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    .line 411
    const-string v4, "pref_backUp"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    .line 412
    const-string v4, "pref_restore"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    .line 413
    const-string v4, "samsung_account"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cloud/CloudAccountPreference;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    .line 414
    const-string v4, "dropbox_sync_account"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cloud/CloudAccountPreference;

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    .line 415
    const-string v4, "pref_set_account"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    .line 416
    const-string v4, "pref_usage"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    .line 417
    const-string v4, "pref_photos"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    .line 418
    const-string v4, "pref_videos"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    .line 419
    const-string v4, "pref_musics"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    .line 420
    const-string v4, "pref_document"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    .line 421
    const-string v4, "pref_key_verify_account"

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    .line 422
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 423
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 424
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 425
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 426
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 427
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 428
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 429
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 448
    const-string v3, ""

    .line 449
    .local v3, syncSummary:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncAdapterNameToDisplay()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, providerLabels:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0912cb

    invoke-virtual {p0, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f091307

    invoke-virtual {p0, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, summary:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isWifiDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isJapanDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_2
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    const v4, 0x7f0912cc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0912d0

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, categoryText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    iget-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v4, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-nez v4, :cond_4

    .line 491
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 492
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 494
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    if-nez v4, :cond_5

    .line 495
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 498
    :cond_5
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 500
    return-void
.end method

.method private static getSalesInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 378
    const-string v0, "xx"

    .line 381
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 383
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 384
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 386
    const-string v2, "get"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 389
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 390
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v5, "ro.csc.sales_code"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 392
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    :goto_0
    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    const-string v0, "xx"

    goto :goto_0

    .line 396
    :catch_1
    move-exception v0

    .line 397
    const-string v0, "xx"

    goto :goto_0
.end method

.method private getSyncAdapterNameToDisplay()Ljava/lang/String;
    .locals 12

    .prologue
    .line 504
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v7, syncLable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, ""

    .line 506
    .local v4, providerLabel:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v6

    .line 508
    .local v6, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v6

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 509
    aget-object v5, v6, v0

    .line 510
    .local v5, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "com.osp.app.signin"

    iget-object v10, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 516
    .local v3, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v3, :cond_0

    .line 517
    const/4 v9, 0x0

    .line 532
    .end local v3           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v5           #sa:Landroid/content/SyncAdapterType;
    :goto_1
    return-object v9

    .line 519
    .restart local v3       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v5       #sa:Landroid/content/SyncAdapterType;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v3           #providerInfo:Landroid/content/pm/ProviderInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v5           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 526
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 527
    .local v8, temp:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 528
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 530
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .end local v8           #temp:Ljava/lang/String;
    :cond_4
    move-object v9, v4

    .line 532
    check-cast v9, Ljava/lang/String;

    goto :goto_1
.end method

.method private getSyncSummaryString(I)Ljava/lang/String;
    .locals 7
    .parameter "contentsType"

    .prologue
    const/4 v1, 0x3

    const v6, 0x7f0912d0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 676
    packed-switch p1, :pswitch_data_0

    .line 695
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 678
    :pswitch_0
    const v0, 0x7f0912f5

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f0912f9

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f091300

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    :pswitch_1
    const v0, 0x7f0912f5

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f0912fa

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0912ff

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 686
    :pswitch_2
    const v0, 0x7f0912f5

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f0912fc

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0912fe

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 690
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v0, :cond_0

    .line 691
    const v0, 0x7f0912f6

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getDocumentSyncFolderName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.cloudagent"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.sCloudBackupApp"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.scloud.quota"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 275
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    .line 281
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->addPreferencesFromResource(I)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferencesReference()V

    .line 283
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    goto :goto_0

    .line 267
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 268
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    goto :goto_1

    .line 272
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 273
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    goto :goto_2
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1132
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1135
    if-eqz v0, :cond_2

    .line 1136
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1138
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1140
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1142
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1151
    :goto_0
    return v0

    .line 1144
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 1145
    goto :goto_0

    .line 1146
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1147
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1151
    goto :goto_0
.end method

.method public static isJapanDevice(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, ret:Z
    invoke-static {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSalesInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, salesCode:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    :cond_0
    const/4 v0, 0x1

    .line 348
    :cond_1
    return v0
.end method

.method private onBackUpClicked()V
    .locals 4

    .prologue
    .line 994
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 995
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.SamsungBackup"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 997
    return-void
.end method

.method private onDataSyncClicked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1014
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 1016
    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    .line 1017
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1018
    const-string v0, "account"

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090967

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1024
    :cond_0
    return-void
.end method

.method private onRestoreClicked()V
    .locals 4

    .prologue
    .line 999
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1000
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.ManualRestoreActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 1002
    return-void
.end method

.method private onStorageClicked()V
    .locals 4

    .prologue
    .line 1005
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1006
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.scloud.quota"

    const-string v3, "com.sec.android.scloud.quota.StorageList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 1008
    return-void
.end method

.method private registerCloudReceiver()V
    .locals 3

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 750
    new-instance v1, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 876
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 878
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    const-string v1, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 885
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestCloudAuthentication()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_SIGNIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method private requestCloudStatus()V
    .locals 3

    .prologue
    .line 723
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v1, :cond_0

    .line 731
    :goto_0
    return-void

    .line 724
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Status - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showDelayedProgress()V

    goto :goto_0
.end method

.method private requestCloudStorageUsage()V
    .locals 3

    .prologue
    .line 737
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Storage Usage - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_STORAGE_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 743
    return-void
.end method

.method private samsungAccountExists()Z
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 293
    .local v0, samsungAccount:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 294
    array-length v1, v0

    if-nez v1, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDelayedProgress()V
    .locals 6

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1206
    :cond_0
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;JJ)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    .line 1217
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1218
    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .parameter "pref"
    .parameter "preferenceGroup"
    .parameter "isShow"

    .prologue
    .line 709
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 710
    if-eqz p3, :cond_1

    .line 711
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private startFragment(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1160
    .line 1161
    const/4 v3, 0x0

    .line 1163
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 1185
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1190
    :cond_0
    return-void

    .line 1165
    :pswitch_0
    const-class v0, Lcom/android/settings/cloud/CloudPhotosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1167
    const v3, 0x7f0912d2

    .line 1168
    goto :goto_0

    .line 1170
    :pswitch_1
    const-class v0, Lcom/android/settings/cloud/CloudVideosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1171
    const v3, 0x7f0912d3

    .line 1172
    goto :goto_0

    .line 1174
    :pswitch_2
    const-class v0, Lcom/android/settings/cloud/CloudMusicsSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1175
    const v3, 0x7f0912f3

    .line 1176
    goto :goto_0

    .line 1178
    :pswitch_3
    const-class v0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1179
    const v3, 0x7f0912f4

    .line 1180
    goto :goto_0

    .line 1163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startWifiActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    const-string v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1197
    const-string v1, "extra_prefs_set_back_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1200
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1201
    return-void
.end method

.method private unregisterCloudReceiver()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 897
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 898
    return-void
.end method

.method private updatePreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const v7, 0x7f09095f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 565
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->samsungAccountExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showAllPreference()V

    .line 590
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 593
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 594
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 598
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 599
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v6}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 600
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v8}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 601
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v9}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 602
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 604
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 605
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 606
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 607
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 609
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 610
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    const v3, 0x7f090610

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 615
    :goto_1
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isPhotoSync()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isVideoSync()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isMusicSync()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isDocumentSync()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    :cond_0
    :goto_6
    return-void

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 580
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 581
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 582
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 583
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 584
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 585
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 615
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 617
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 619
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 621
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 625
    :cond_7
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 628
    const v2, 0x7f0912f7

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, linkAccount:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 631
    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f0912d0

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getLinkAccountSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 634
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 635
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 638
    .end local v1           #text:Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 639
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 640
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 641
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 642
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 643
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 644
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_6
.end method


# virtual methods
.method public isInstalledApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiDevice()Z
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x1

    .line 354
    .local v0, ret:Z
    const-string v1, "com.sec.mms"

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.mms.kor.provider"

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.mms"

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    const/4 v0, 0x0

    .line 360
    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    .line 1030
    packed-switch p1, :pswitch_data_0

    .line 1053
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1055
    return-void

    .line 1033
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1034
    const-string v0, "CloudSettings"

    const-string v1, "Samsung account added successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    :pswitch_1
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed in with result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1046
    :pswitch_2
    const-string v0, "CloudSettings"

    const-string v1, "completeWifiActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    goto :goto_0

    .line 1030
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 221
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->init()V

    .line 223
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0912e9

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startWifiActivity()V

    .line 235
    :cond_2
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 241
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 336
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 337
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 256
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 906
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onBackUpClicked()V

    .line 984
    :cond_0
    :goto_0
    return v7

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onRestoreClicked()V

    goto :goto_0

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onStorageClicked()V

    goto :goto_0

    .line 917
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_5

    .line 920
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0912e9

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 923
    :cond_4
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 931
    :cond_5
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 932
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->addSamsungAccount()V

    goto :goto_0

    .line 933
    :cond_6
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 934
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onDataSyncClicked()V

    goto :goto_0

    .line 935
    :cond_7
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 936
    invoke-direct {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 937
    :cond_8
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 938
    invoke-direct {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 939
    :cond_9
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 940
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto/16 :goto_0

    .line 941
    :cond_a
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 942
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto/16 :goto_0

    .line 943
    :cond_b
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 945
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 947
    array-length v0, v4

    if-lez v0, :cond_0

    .line 948
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 949
    const-string v0, "account"

    aget-object v1, v4, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 950
    const-string v0, "account_type"

    aget-object v1, v4, v6

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v0, "accountReturnToPrevious"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090967

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 957
    :cond_c
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 958
    sget-boolean v0, Lcom/android/settings/cloud/CloudSettingConstants;->C_CHINA:Z

    if-eqz v0, :cond_d

    .line 959
    const/16 v0, 0xa

    const v1, 0x7f090986

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 961
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v6}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 962
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 965
    :cond_d
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.dropbox.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 967
    array-length v0, v4

    if-lez v0, :cond_0

    .line 968
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 969
    const-string v0, "account"

    aget-object v1, v4, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 970
    const-string v0, "account_type"

    aget-object v1, v4, v6

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v0, "accountReturnToPrevious"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0912d0

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 977
    :cond_e
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.EmailValidationView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 248
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    .line 249
    return-void
.end method

.method public showAllPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1058
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1059
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1060
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1063
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1064
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1066
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1068
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    if-eqz v1, :cond_1

    .line 1069
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1071
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1073
    .local v0, samsungAccount:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 1074
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    aget-object v2, v0, v4

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1078
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1079
    return-void
.end method

.method public showVerifyAccountPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1082
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1083
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1084
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1086
    .local v0, samsungAccount:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1092
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1093
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1094
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1095
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 1097
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1098
    return-void
.end method

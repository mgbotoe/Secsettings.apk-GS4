.class public Lcom/android/settings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MasterClearConfirm$2;,
        Lcom/android/settings/MasterClearConfirm$PWState;
    }
.end annotation


# static fields
.field private static mTelMan:Landroid/telephony/TelephonyManager;


# instance fields
.field private final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field private final AUTHORITY:Ljava/lang/String;

.field private final SAMSUNG_ID:Ljava/lang/String;

.field private final SPC_ACCOUNT_TABLE:Ljava/lang/String;

.field private final SPC_PERMISSION_TABLE:Ljava/lang/String;

.field private final USER_ADMIN:Ljava/lang/String;

.field private final USER_DIVISION:Ljava/lang/String;

.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/settings/MasterClearConfirm$PWState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    const-string v0, "permission"

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->SPC_PERMISSION_TABLE:Ljava/lang/String;

    .line 108
    const-string v0, "account"

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->SPC_ACCOUNT_TABLE:Ljava/lang/String;

    .line 109
    const-string v0, "com.sec.android.spc.easysetup.account.AccountContentProvider"

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->AUTHORITY:Ljava/lang/String;

    .line 110
    const-string v0, "content://com.sec.android.spc.easysetup.account.AccountContentProvider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 112
    const-string v0, "UserDivision"

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->USER_DIVISION:Ljava/lang/String;

    .line 113
    const-string v0, "SamsungId"

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->SAMSUNG_ID:Ljava/lang/String;

    .line 114
    const-string v0, "admin"

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->USER_ADMIN:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 135
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private DoMasterReset()V
    .locals 6

    .prologue
    .line 251
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 261
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v0, :cond_5

    .line 276
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v0, :cond_4

    .line 278
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 281
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 282
    array-length v3, v2

    .line 283
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 284
    const-string v4, "sd"

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    const-string v3, "storage_volume"

    aget-object v0, v2, v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 283
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 298
    :cond_5
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CRI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "XAR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "LRA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableModemResetDuringFactoryReset"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    :cond_6
    const-string v0, "MasterClearConfirm"

    const-string v1, "ready to Factory reset. Call SecFactoryReset."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/MasterClearModemReset;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "FACTORY"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 307
    :cond_7
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 310
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 341
    sget-object v0, Lcom/android/settings/MasterClearConfirm$2;->$SwitchMap$com$android$settings$MasterClearConfirm$PWState:[I

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 358
    :goto_0
    return-void

    .line 343
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    .line 344
    sget-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CONFIRM:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 345
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 350
    :pswitch_1
    sget-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f090063

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, phone_password:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 321
    sget-object v1, Lcom/android/settings/MasterClearConfirm$PWState;->NEW:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 322
    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090070

    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090065

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->storeResetDate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->StartPassword()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 418
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    return-void
.end method

.method public static isSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 361
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/android/settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 362
    sget-object v1, Lcom/android/settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 364
    :cond_0
    const/4 v0, 0x0

    .line 366
    :cond_1
    return v0
.end method

.method private storeResetDate()V
    .locals 8

    .prologue
    .line 174
    const-string v1, "/efs/LastResetDate.txt"

    .line 175
    .local v1, filename:Ljava/lang/String;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, string:Ljava/lang/String;
    const/4 v2, 0x0

    .line 179
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v4, resolveMe:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 182
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 185
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 190
    if-eqz v3, :cond_3

    .line 192
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 197
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v4           #resolveMe:Ljava/io/File;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 193
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    .restart local v4       #resolveMe:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 195
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #resolveMe:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    if-eqz v2, :cond_1

    .line 192
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 193
    :catch_2
    move-exception v0

    .line 194
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v2, :cond_2

    .line 192
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :cond_2
    :goto_3
    throw v6

    .line 193
    :catch_3
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 190
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    .restart local v4       #resolveMe:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 187
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_1

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_3
    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 372
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 374
    sparse-switch p1, :sswitch_data_0

    .line 410
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 376
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    if-ne p2, v2, :cond_0

    .line 378
    invoke-direct {p0, p3}, Lcom/android/settings/MasterClearConfirm;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    goto :goto_0

    .line 384
    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    if-ne p2, v2, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x7d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 445
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 447
    if-eqz v0, :cond_0

    const-string v1, "can_erase_sd_on_fuse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    .line 449
    return-void

    :cond_1
    move v1, v2

    .line 445
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 424
    const v0, 0x7f0400dc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 425
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 426
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 434
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "subject"
    .parameter "password"
    .parameter "requestCode"

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    return-void
.end method

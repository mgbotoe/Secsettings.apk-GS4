.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final USER_DRAWABLES:[I


# instance fields
.field private en_mobile_data:I

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOwner:Z

.field private mMePreference:Lcom/android/settings/users/MePreference;

.field private mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

.field private mProfileExists:Z

.field private mRemovingUserId:I

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private userNprofile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    return-void

    :array_0
    .array-data 0x4
        0x44t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 152
    iput v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 159
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    .line 161
    iput v1, p0, Lcom/android/settings/users/UserSettings;->en_mobile_data:I

    .line 162
    iput v1, p0, Lcom/android/settings/users/UserSettings;->userNprofile:I

    .line 163
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v1

    .line 159
    goto :goto_0
.end method

.method private IsProfileExist()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 990
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 991
    if-nez v1, :cond_0

    .line 992
    const-string v0, "UserSettings"

    const-string v1, "IsProfileExist() : profile is null so return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1003
    :goto_0
    return v0

    .line 996
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    const-string v0, "UserSettings"

    const-string v2, "IsProfileExist() : profile.moveToFirst() is failed so return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    .line 1000
    :cond_1
    :try_start_1
    const-string v0, "UserSettings"

    const-string v2, "IsProfileExist() : return true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getProfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createLimitedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/users/UserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addUserNow(I)V
    .locals 2
    .parameter "userType"

    .prologue
    .line 679
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->setFontStyleIndexForMultiUser()V

    .line 683
    new-instance v0, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$13;->start()V

    .line 717
    monitor-exit v1

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 849
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 850
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 836
    :cond_0
    return-void
.end method

.method private createLimitedUser()Landroid/content/pm/UserInfo;
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 386
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090b00

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 389
    .local v7, newUserInfo:Landroid/content/pm/UserInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 390
    .local v9, userId:I
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 391
    .local v8, user:Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v11, "no_modify_accounts"

    invoke-virtual {v10, v11, v13, v8}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 392
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v11, "no_share_location"

    invoke-virtual {v10, v11, v13, v8}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "location_providers_allowed"

    const-string v12, ""

    invoke-static {v10, v11, v12, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-object v11, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    sget-object v12, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    array-length v12, v12

    rem-int v12, v9, v12

    aget v11, v11, v12

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 398
    .local v4, bitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9, v4}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 401
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 402
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 403
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v3, v5

    .line 404
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v2, v0, v8}, Landroid/accounts/AccountManager;->addSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 407
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    return-object v7
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 413
    .local v0, newUserInfo:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 416
    :cond_0
    return-object v0
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 7
    .parameter "profileName"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/MePreference;

    const v4, 0x7f090ae9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/users/MePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 325
    .local v2, myUserId:I
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 327
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 328
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/MePreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/users/MePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->IsProfileExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 841
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mProfileExists:Z

    .line 843
    :cond_1
    return-object v0
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 335
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, lpu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 935
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, chooseLockIntent:Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 344
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p1, missingIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 814
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/users/UserSettings$14;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/users/UserSettings$14;-><init>(Lcom/android/settings/users/UserSettings;Landroid/content/res/Resources;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserSettings$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 830
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mProfileExists:Z

    .line 298
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .parameter "userType"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 362
    packed-switch p1, :pswitch_data_0

    .line 373
    :cond_0
    :goto_0
    monitor-exit v1

    .line 374
    return-void

    .line 364
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->userNprofile:I

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 368
    :pswitch_1
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->userNprofile:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v1, :cond_1

    .line 422
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 423
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090b25

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 433
    const-string v1, "show_nickname"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 434
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_2

    const v3, 0x7f0901a4

    .line 437
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    const v3, 0x7f0901aa

    goto :goto_1

    :cond_3
    const v3, 0x7f0901a8

    goto :goto_1
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 378
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 381
    :cond_0
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 446
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 447
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 670
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 666
    :goto_0
    return-void

    .line 657
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$12;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .parameter "pref"
    .parameter "user"

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 854
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 857
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 863
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 728
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 13

    .prologue
    const v12, 0x7f020044

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 754
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 755
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 758
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 759
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 761
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 762
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/MePreference;

    .line 763
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    iget-object v3, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/SelectableEditTextPreference;->setText(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    iget-object v3, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 777
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 778
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f090ae7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 784
    :cond_3
    :goto_4
    iget-object v1, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 785
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 786
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_1

    .line 766
    :cond_4
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v4, :cond_6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v7

    :goto_5
    iget-boolean v5, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v5, :cond_7

    move-object v5, p0

    :goto_6
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 769
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 772
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_5

    .line 773
    const v1, 0x7f090ae8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 775
    :cond_5
    iget-object v1, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move v4, v8

    .line 766
    goto :goto_5

    :cond_7
    move-object v5, v2

    goto :goto_6

    .line 778
    :cond_8
    const v1, 0x7f090ae6

    goto :goto_3

    .line 781
    :cond_9
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 782
    const v1, 0x7f090ae3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 789
    :cond_a
    invoke-direct {p0, v0, v6}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 794
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v0, :cond_c

    .line 795
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move v4, v8

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 797
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 798
    const v1, 0x7f090aff

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 799
    const v1, 0x7f090b07

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 800
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    .line 801
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 803
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 806
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 807
    invoke-direct {p0, v10}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 809
    :cond_d
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 972
    const v0, 0x7f090b1e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 348
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 350
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 351
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 943
    .local v0, userId:I
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 946
    .end local v0           #userId:I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    if-eqz p1, :cond_1

    .line 200
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 203
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 209
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 210
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 211
    const-string v0, "user_me"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/MePreference;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/MePreference;

    .line 212
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/MePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/users/MePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/MePreference;

    const v1, 0x7f090ae8

    invoke-virtual {v0, v1}, Lcom/android/settings/users/MePreference;->setSummary(I)V

    .line 216
    :cond_2
    const-string v0, "user_owner_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 218
    .local v7, ownerInfo:Landroid/preference/Preference;
    const-string v0, "user_owner_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->removePreference(Ljava/lang/String;)V

    .line 220
    if-eqz v7, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_3

    .line 221
    const v0, 0x7f0901a8

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 224
    .local v6, isMyprofile:I
    if-eqz v7, :cond_4

    if-ne v6, v4, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_4
    const-string v0, "user_nickname"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SelectableEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    .line 229
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SelectableEditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/SelectableEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectableEditTextPreference;->setInitialSelectionMode(I)V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 235
    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 236
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 240
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 16
    .parameter "dialogId"

    .prologue
    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 464
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_0

    const/4 v9, 0x0

    .line 649
    :goto_0
    return-object v9

    .line 465
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 649
    const/4 v9, 0x0

    goto :goto_0

    .line 467
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    if-ne v1, v5, :cond_1

    const v1, 0x7f090b01

    :goto_1
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    if-ne v1, v5, :cond_3

    const v1, 0x7f090b04

    :goto_2
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f090b09

    new-instance v5, Lcom/android/settings/users/UserSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 486
    .local v9, dlg:Landroid/app/Dialog;
    goto :goto_0

    .line 467
    .end local v9           #dlg:Landroid/app/Dialog;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f090b03

    goto :goto_1

    :cond_2
    const v1, 0x7f090b02

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f090b06

    goto :goto_2

    :cond_4
    const v1, 0x7f090b05

    goto :goto_2

    .line 489
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09018c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f090afc

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_0

    .line 553
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 555
    .local v12, preferences:Landroid/content/SharedPreferences;
    const-string v1, "key_add_user_long_message_displayed"

    const/4 v4, 0x0

    invoke-interface {v12, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 557
    .local v10, longMessageDisplayed:Z
    if-eqz v10, :cond_5

    const v11, 0x7f090af6

    .line 560
    .local v11, messageResId:I
    :goto_3
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    const/4 v13, 0x1

    .line 562
    .local v13, userType:I
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090af1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/users/UserSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v10, v12}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 577
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 557
    .end local v9           #dlg:Landroid/app/Dialog;
    .end local v11           #messageResId:I
    .end local v13           #userType:I
    :cond_5
    const v11, 0x7f090af2

    goto :goto_3

    .line 560
    .restart local v11       #messageResId:I
    :cond_6
    const/4 v13, 0x2

    goto :goto_4

    .line 581
    .end local v10           #longMessageDisplayed:Z
    .end local v11           #messageResId:I
    .end local v12           #preferences:Landroid/content/SharedPreferences;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090af7

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f090af8

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f090afa

    new-instance v5, Lcom/android/settings/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f090afb

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 592
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 595
    .end local v9           #dlg:Landroid/app/Dialog;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090af9

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 605
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 608
    .end local v9           #dlg:Landroid/app/Dialog;
    :pswitch_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 610
    .local v8, addUserItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    const v4, 0x7f090aef

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v1, "summary"

    const v4, 0x7f090aed

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 613
    .local v7, addProfileItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    const v4, 0x7f090af0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v1, "summary"

    const v4, 0x7f090aee

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090aec

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v1, Landroid/widget/SimpleAdapter;

    const v4, 0x7f04018c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v15, "title"

    aput-object v15, v5, v6

    const/4 v6, 0x1

    const-string v15, "summary"

    aput-object v15, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v4, Lcom/android/settings/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v14, v1, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 630
    .restart local v9       #dlg:Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 634
    .end local v3           #data:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7           #addProfileItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #addUserItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #dlg:Landroid/app/Dialog;
    :pswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090cd1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f090ae4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f090ae5

    new-instance v5, Lcom/android/settings/users/UserSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 646
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 617
    :array_0
    .array-data 0x4
        0x8at 0x0t 0xbt 0x7ft
        0xf2t 0x2t 0xbt 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 265
    iget-boolean v3, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_1

    .line 266
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 267
    const v3, 0x7f090ae2

    invoke-interface {p1, v7, v6, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 268
    .local v0, addUserItem:Landroid/view/MenuItem;
    const v3, 0x7f0202bf

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 269
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 279
    .end local v0           #addUserItem:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 280
    return-void

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, nickname:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090afe

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 276
    .local v2, removeThisUser:Landroid/view/MenuItem;
    const v3, 0x7f0200e9

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 458
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 459
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 951
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 952
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 953
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 954
    monitor-exit v1

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 285
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 286
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 292
    :goto_0
    return v1

    .line 288
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 289
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 959
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 960
    check-cast v0, Ljava/lang/String;

    .line 961
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 963
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 964
    const/4 v1, 0x1

    .line 967
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 879
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/MePreference;

    if-ne p1, v0, :cond_3

    .line 881
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mProfileExists:Z

    if-nez v0, :cond_1

    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 884
    const-string v1, "newLocalProfile"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    :goto_0
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 893
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 894
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    .line 917
    :cond_0
    :goto_1
    return v5

    .line 886
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 896
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 898
    :cond_3
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_0

    .line 899
    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 901
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 902
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    .line 903
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 905
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 906
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 908
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 867
    const-string v0, "UserSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v0, "user_owner_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 869
    const-string v0, "UserSettings"

    const-string v1, "user_owner_info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const v0, 0x7f0901a4

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 872
    const/4 v0, 0x1

    .line 874
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 247
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    return-void
.end method

.method public setFontStyleIndexForMultiUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_font_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 978
    if-ne v0, v2, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "prefs"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 982
    const-string v1, "SavedClickedItem"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 983
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_font_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 984
    const-string v1, "UserSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_0
    return-void
.end method

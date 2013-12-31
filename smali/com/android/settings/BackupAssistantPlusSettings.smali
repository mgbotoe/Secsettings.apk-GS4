.class public Lcom/android/settings/BackupAssistantPlusSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BackupAssistantPlusSettings.java"


# static fields
.field public static TYPE_ALL:I

.field public static TYPE_DOCUMENT:I

.field public static TYPE_MUSIC:I

.field public static TYPE_PICTURE:I

.field public static TYPE_PICTURE_VIDEO:I

.field public static TYPE_VIDEO:I


# instance fields
.field private mBuaPlusContacts:Landroid/preference/PreferenceScreen;

.field private mBuaPlusMedia:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_ALL:I

    .line 43
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_MUSIC:I

    .line 44
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_VIDEO:I

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_PICTURE:I

    .line 46
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_DOCUMENT:I

    .line 47
    const/4 v0, 0x6

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_PICTURE_VIDEO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isContactsVUX()Z
    .locals 2

    .prologue
    .line 107
    const-string v0, "SCH-I705"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->addPreferencesFromResource(I)V

    .line 56
    const-string v0, "bua_plus_contacts"

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    .line 57
    const-string v0, "bua_plus_media"

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    .line 58
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->isContactsVUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const v0, 0x7f091094

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/settings/BackupAssistantPlusSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 69
    :cond_1
    const v0, 0x7f091093

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_1
    const-string v0, "com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    .line 88
    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    .line 89
    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 91
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    .line 93
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    sget v5, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_ALL:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 95
    const-string v3, "launchBuaMediaVUXApp"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v0, "BackupAssistantPlusSettings"

    const-string v1, "cant find com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

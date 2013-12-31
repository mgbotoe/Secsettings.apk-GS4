.class public Lcom/android/settings/rcs/RcsSettings;
.super Ljava/lang/Object;
.source "RcsSettings.java"


# static fields
.field private static mRcsSettingsPreference:Landroid/preference/Preference;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mSettingsTreeParent:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 35
    iput-object p2, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 36
    const-string v0, "rcs_settings"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    .line 38
    sget-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public updateRcsSettingsVisibility(Z)V
    .locals 3
    .parameter "showRcsSettings"

    .prologue
    .line 50
    sget-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRcsSettingsVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

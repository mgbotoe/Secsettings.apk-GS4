.class public Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private androidBeam:Landroid/preference/Preference;

.field private exportAccessibility:Landroid/preference/Preference;

.field private importAccessibility:Landroid/preference/Preference;

.field private path:Ljava/lang/String;

.field private shareAccessibility:Landroid/preference/Preference;

.field private sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "SharedAccessibilityFragment"

    const-string v1, "SharedAccessibilityFragment Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->addPreferencesFromResource(I)V

    .line 62
    const-string v0, "shared_accessibility_menus"

    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    .line 64
    const-string v0, "shared_accessibility_export"

    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    .line 65
    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    const-string v0, "shared_accessibility_import"

    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    .line 71
    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    const-string v0, "shared_accessibility_android_beam"

    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    .line 78
    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityExport"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityImport"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityShareVia"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    if-ne p1, v2, :cond_3

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilitySettingsNFCSend"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

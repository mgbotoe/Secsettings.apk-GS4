.class public abstract Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ToggleFeaturePreferenceFragment"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private final initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSummaryPreference:Landroid/preference/Preference;

.field protected mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

.field protected mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3870
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 3885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 3962
    new-instance v0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment$2;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 7
    .parameter "activity"

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 3973
    new-instance v1, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 3974
    .local v1, toggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3976
    .local v0, padding:I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setPaddingRelative(IIII)V

    .line 3977
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 3979
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 3983
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 3889
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3890
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->context:Landroid/content/Context;

    .line 3891
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 3892
    .local v0, arguments:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 3894
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 3895
    new-instance v2, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 3920
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 3921
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 3922
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v3, 0x7f04017f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 3923
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 3924
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 3950
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 3951
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 3952
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3953
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3954
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3938
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 3939
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 3940
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3942
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 3943
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 3944
    return-void
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 1

    .prologue
    .line 3969
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    .line 3970
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 3959
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arguments"

    .prologue
    .line 3988
    const-string v4, "preference_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 3990
    const-string v4, "checked"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3991
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v4, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3993
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 3994
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3995
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 3996
    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3997
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3998
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4001
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    const-string v4, "summary"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4002
    .local v2, summary:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4003
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 4004
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 3928
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3929
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 3930
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 3932
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3933
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3934
    return-void
.end method

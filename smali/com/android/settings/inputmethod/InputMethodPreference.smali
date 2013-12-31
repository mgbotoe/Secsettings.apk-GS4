.class public Lcom/android/settings/inputmethod/InputMethodPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlwaysChecked:Z

.field private final mCollator:Ljava/text/Collator;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPref:Landroid/view/View;

.field private mInputMethodSettingsButton:Landroid/widget/ImageView;

.field private mIsDefaultIme:Z

.field private final mIsSystemIme:Z

.field private final mPrefOnclickListener:Landroid/view/View$OnClickListener;

.field private final mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 3
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "imm"
    .parameter "imi"
    .parameter "imiCount"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f100029

    invoke-direct {p0, v0, v2, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 73
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    .line 99
    const v0, 0x7f040129

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 100
    const v0, 0x7f04012a

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 101
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 102
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 103
    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 104
    iput-object p4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 106
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p4, v0, p5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mAlwaysChecked:Z

    .line 108
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    .line 109
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsDefaultIme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private saveImeSettings()V
    .locals 5

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 373
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 7
    .parameter "imi"
    .parameter "chkPref"

    .prologue
    const/4 v3, 0x1

    .line 318
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 321
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$7;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/inputmethod/InputMethodPreference$7;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$6;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$6;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 339
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907ab

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v6}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 343
    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "fragment"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 266
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v3, 0x7f09079e

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 268
    const/4 v1, 0x1

    .line 273
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 270
    :cond_0
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePreferenceViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 228
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 230
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 232
    if-nez v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 243
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 244
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    .line 246
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    if-nez v1, :cond_4

    .line 248
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 250
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 253
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 256
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    .end local v1           #enabled:Z
    :cond_4
    return-void

    .line 246
    .restart local v1       #enabled:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 9
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 347
    instance-of v8, p1, Lcom/android/settings/inputmethod/InputMethodPreference;

    if-nez v8, :cond_1

    .line 348
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v5

    .line 365
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    .line 350
    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 351
    .local v0, imp:Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-boolean v8, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mAlwaysChecked:Z

    if-eqz v8, :cond_2

    move v1, v5

    .line 352
    .local v1, priority0:Z
    :goto_1
    iget-boolean v8, v0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/settings/inputmethod/InputMethodPreference;->mAlwaysChecked:Z

    if-eqz v8, :cond_3

    move v2, v5

    .line 353
    .local v2, priority1:Z
    :goto_2
    if-ne v1, v2, :cond_5

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 355
    .local v3, t0:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 356
    .local v4, t1:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 359
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    .line 360
    goto :goto_0

    .end local v1           #priority0:Z
    .end local v2           #priority1:Z
    .end local v3           #t0:Ljava/lang/CharSequence;
    .end local v4           #t1:Ljava/lang/CharSequence;
    :cond_2
    move v1, v6

    .line 351
    goto :goto_1

    .restart local v1       #priority0:Z
    :cond_3
    move v2, v6

    .line 352
    goto :goto_2

    .line 362
    .restart local v2       #priority1:Z
    .restart local v3       #t0:Ljava/lang/CharSequence;
    .restart local v4       #t1:Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 365
    .end local v3           #t0:Ljava/lang/CharSequence;
    .end local v4           #t1:Ljava/lang/CharSequence;
    :cond_5
    if-eqz v1, :cond_0

    move v5, v7

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getSummaryString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 280
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 281
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 282
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 286
    .local v3, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 114
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 115
    const v4, 0x7f0b034a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    .line 116
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v4, 0x7f0b034d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    .line 118
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    .line 119
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    .line 120
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-le v4, v5, :cond_7

    move v0, v5

    .line 121
    .local v0, hasSubtypes:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, imiId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    new-instance v7, Lcom/android/settings/inputmethod/InputMethodPreference$2;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 135
    :cond_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/settings/inputmethod/InputMethodPreference$3;

    invoke-direct {v7, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/settings/inputmethod/InputMethodPreference$4;

    invoke-direct {v7, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 181
    :cond_2
    if-eqz v0, :cond_3

    .line 182
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$5;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$5;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    .line 192
    .local v2, listener:Landroid/view/View$OnLongClickListener;
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 194
    .end local v2           #listener:Landroid/view/View$OnLongClickListener;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v4, :cond_8

    .line 195
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mAlwaysChecked:Z

    if-eqz v4, :cond_6

    .line 201
    const v4, 0x1020001

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 203
    .local v3, mCheckBoxView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 206
    if-eqz v3, :cond_4

    .line 207
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    const v4, 0x3e99999a

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 211
    :cond_4
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 212
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    :cond_5
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 215
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 218
    .end local v3           #mCheckBoxView:Landroid/view/View;
    :cond_6
    return-void

    .end local v0           #hasSubtypes:Z
    .end local v1           #imiId:Ljava/lang/String;
    :cond_7
    move v0, v6

    .line 120
    goto :goto_0

    .line 197
    .restart local v0       #hasSubtypes:Z
    .restart local v1       #imiId:Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    .line 315
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 0
    .parameter "checked"
    .parameter "save"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 306
    if-eqz p2, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->saveImeSettings()V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 310
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 224
    return-void
.end method

.method public updateSummary()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class public Lcom/android/settings/nfc/NfcPaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcPaymentSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;
    }
.end annotation


# instance fields
.field private dontShowAgain:Landroid/widget/CheckBox;

.field private mActivity:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mMode:I

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcPaymentSettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->dontShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static getMode(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I
    .locals 4
    .parameter "context"
    .parameter "nfcAdapter"

    .prologue
    const/4 v1, -0x1

    .line 181
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 182
    :cond_0
    const-string v2, "NfcPaymentSettings"

    const-string v3, "getMode() : I can\'t get the NfcAdapter instance."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 191
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getSecureStorageSetting()I

    move-result v0

    .line 187
    .local v0, mode:I
    if-ne v0, v1, :cond_2

    .line 188
    const-string v1, "NfcPaymentSettings"

    const-string v2, "getMode() : Failure to get NFC Secure Storage Setting in NFC Service because maybe NFC Service is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    const-string v1, "NfcPaymentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMode() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMode(Landroid/content/Context;Landroid/nfc/NfcAdapter;I)V
    .locals 4
    .parameter "context"
    .parameter "nfcAdapter"
    .parameter "mode"

    .prologue
    .line 195
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 196
    :cond_0
    const-string v1, "NfcPaymentSettings"

    const-string v2, "setMode() : I can\'t get the NfcAdapter instance."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/nfc/NfcPaymentSettings;->getMode(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I

    move-result v0

    .line 201
    .local v0, prevMode:I
    const-string v1, "NfcPaymentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode() :  prevMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1, p2}, Landroid/nfc/NfcAdapter;->setSecureStorageSetting(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 205
    const-string v1, "NfcPaymentSettings"

    const-string v2, "saveMode() : Failure to change NFC Secure Storage Setting in NFC Service because maybe NFC Service is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->setRoutingToUICC()Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    const-string v1, "NfcPaymentSettings"

    const-string v2, "saveMode() : Failure to change routing to UICC because maybe NFC Service is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_4
    const-string v1, "NfcPaymentSettings"

    const-string v2, "saveMode() : mode : AUTO -> MANUAL. so It routing is changed to UICC."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showWelcome(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 229
    const-string v5, "prefs_payment_mode"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 230
    .local v4, myPrefs:Landroid/content/SharedPreferences;
    const-string v5, "KEY_WELCOME_AGAIN"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 232
    .local v3, checked:I
    const-string v5, "NfcPaymentSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWelcome() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-ne v3, v8, :cond_0

    .line 237
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, adb:Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 239
    .local v1, adbInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0400ea

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, askLayout:Landroid/view/View;
    const v5, 0x7f0b0268

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->dontShowAgain:Landroid/widget/CheckBox;

    .line 241
    iget-object v5, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->dontShowAgain:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/settings/nfc/NfcPaymentSettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/nfc/NfcPaymentSettings$1;-><init>(Lcom/android/settings/nfc/NfcPaymentSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 248
    const v5, 0x7f0902c0

    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/NfcPaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    const v5, 0x7f0902c5

    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/NfcPaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    const v5, 0x7f0914e3

    new-instance v6, Lcom/android/settings/nfc/NfcPaymentSettings$2;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/nfc/NfcPaymentSettings$2;-><init>(Lcom/android/settings/nfc/NfcPaymentSettings;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 264
    .end local v0           #adb:Landroid/app/AlertDialog$Builder;
    .end local v1           #adbInflater:Landroid/view/LayoutInflater;
    .end local v2           #askLayout:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 135
    if-eqz p1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0200dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 137
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    const v1, 0x7f0200e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 146
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 152
    :cond_1
    :goto_1
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 140
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 149
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentSettings;->setHasOptionsMenu(Z)V

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v1, "NfcPaymentSettings"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    .line 67
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 69
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 71
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 116
    .local v0, isTablet:Z
    const v3, 0x7f090173

    invoke-interface {p1, v2, v5, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    .line 117
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 120
    const/4 v3, 0x3

    const v4, 0x7f090bca

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    .line 121
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 124
    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/NfcPaymentSettings;->updateOptionsMenuIcon(Z)V

    .line 130
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 131
    return-void

    :cond_0
    move v1, v2

    .line 125
    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/NfcPaymentSettings;->updateOptionsMenuIcon(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 77
    const-string v2, "NfcPaymentSettings"

    const-string v3, "onCreateView()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const v2, 0x7f0400e9

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0267

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mListView:Landroid/widget/ListView;

    .line 81
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 87
    .local v0, nfcAdapter:Landroid/nfc/NfcAdapter;
    if-nez p3, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/settings/nfc/NfcPaymentSettings;->getMode(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    .line 89
    const-string v2, "NfcPaymentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView() - reading ModeState from Pref:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/android/settings/nfc/NfcPaymentSettings;->showWelcome(Landroid/content/Context;)V

    .line 103
    return-object v1

    .line 91
    :cond_1
    const-string v2, "savedMode"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    .line 92
    const-string v2, "NfcPaymentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView() - reading ModeState from savedInstanceState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    if-ne v2, v5, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/settings/nfc/NfcPaymentSettings;->getMode(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 174
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    .line 178
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 168
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 158
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentSettings;->finish()V

    goto :goto_0

    .line 161
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentSettings;->finish()V

    goto :goto_0

    .line 164
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 165
    .local v0, nfcAdapter:Landroid/nfc/NfcAdapter;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/nfc/NfcPaymentSettings;->setMode(Landroid/content/Context;Landroid/nfc/NfcAdapter;I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentSettings;->finish()V

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    .line 223
    const-string v0, "savedMode"

    iget v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v0, "NfcPaymentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSavedInstanceState() - mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

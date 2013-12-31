.class public Lcom/android/settings/wifi/WifiHiddenApAddDialog;
.super Landroid/app/AlertDialog;
.source "WifiHiddenApAddDialog.java"


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSsid:Landroid/widget/EditText;

.field private mTempSsid:Ljava/lang/String;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 28
    const v0, 0x7f100035

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;-><init>(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 30
    iput-object p2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiHiddenApAddDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->validate()V

    return-void
.end method

.method private validate()V
    .locals 3

    .prologue
    .line 84
    const/4 v1, 0x1

    .line 85
    .local v1, enabled:Z
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 87
    .local v0, button:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 91
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0401cf

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->setView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->setInverseBackgroundForced(Z)V

    .line 43
    new-instance v1, Lcom/android/settings/Utils$LengthFilter;

    invoke-direct {v1, v0}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, lengthFilter:Lcom/android/settings/Utils$LengthFilter;
    const v3, 0x7f0b04b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    .line 45
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    new-array v4, v6, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 48
    const/4 v3, -0x1

    const v4, 0x7f090468

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    const/4 v3, -0x2

    const v4, 0x7f090469

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 51
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->validate()V

    .line 54
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 61
    return-void
.end method

.class public Lcom/android/settings/encryption/CryptSDCardMMOption;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardMMOption.java"


# instance fields
.field private DEBUG:Z

.field private mButtonNo:Landroid/widget/Button;

.field private mButtonYes:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mParent:Landroid/app/Activity;

.field private mSdCardEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->DEBUG:Z

    .line 28
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 29
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 31
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonYes:Landroid/widget/Button;

    .line 33
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonNo:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardMMOption;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardMMOption;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->applyEncryptionUpdates()V

    return-void
.end method

.method private applyEncryptionUpdates()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->showEncryptionOptionConfirm()V

    .line 130
    return-void
.end method

.method private disableUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 99
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonYes:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonNo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    return-void
.end method

.method private restoreUI()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, fullText:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 108
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonYes:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonNo:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 113
    const v2, 0x7f090bf9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    const v2, 0x7f090bda

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    const v2, 0x7f090bdb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showEncryptionOptionConfirm()V
    .locals 4

    .prologue
    .line 133
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    const-class v0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 135
    const v0, 0x7f090bbb

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 136
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 141
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mParent:Landroid/app/Activity;

    .line 56
    const-string v0, "CryptSDCardMMOption"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v3, -0x1

    .line 61
    const v0, 0x7f040051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mContentView:Landroid/view/View;

    .line 62
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 64
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonYes:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonNo:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonYes:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 69
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 70
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 71
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fullEnc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 72
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "excludeMedia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 73
    const-string v0, "CryptSDCardMMOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MM Option - enc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fullEnc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " excludeMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v0, v3, :cond_1

    .line 76
    :cond_0
    const-string v0, "CryptSDCardMMOption"

    const-string v1, "Read Policy failure from getArguments()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonYes:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardMMOption$1;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardMMOption$1;-><init>(Lcom/android/settings/encryption/CryptSDCardMMOption;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mButtonNo:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardMMOption$2;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardMMOption$2;-><init>(Lcom/android/settings/encryption/CryptSDCardMMOption;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 39
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->disableUI()V

    .line 41
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->restoreUI()V

    goto :goto_0
.end method

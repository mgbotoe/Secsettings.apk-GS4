.class public Lcom/android/settings/flipfont/FontListActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static DEBUG:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isEasySettingsCall:Z

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    sput-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    .line 606
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.monotype.android.font.chococooky"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.maruberi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.mincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 53
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    .line 64
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 68
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 71
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mFileCopying:Z

    .line 80
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mQuestionDialogFontSize:I

    .line 83
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogLeftPadding:I

    .line 85
    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogTopPadding:I

    .line 87
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogRightPadding:I

    .line 89
    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogBottomPadding:I

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 98
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/flipfont/FontListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 690
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 696
    const v1, 0x7f090a85

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 699
    const v1, 0x7f090a86

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 702
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 705
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/flipfont/FontListActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/flipfont/FontListActivity$7;-><init>(Lcom/android/settings/flipfont/FontListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/flipfont/FontListActivity$8;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListActivity$8;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 727
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 624
    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 625
    const-string v0, "FlipFont"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFont - checking apkname"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 628
    :goto_0
    sget-object v3, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 629
    sget-object v3, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "FlipFont"

    const-string v2, "**Apk name matches list**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1
    :goto_1
    return v1

    .line 628
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_3
    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 639
    const-string v0, "FlipFont"

    const-string v3, "checkFont - check if valid certificate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 647
    :goto_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 650
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 651
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 654
    :try_start_1
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 661
    :goto_3
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 666
    :goto_4
    sget-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 667
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate issued by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The certificate is valid from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate SN# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generated with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_5
    const-string v2, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 677
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 680
    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 681
    const-string v0, "FlipFont"

    const-string v2, "**Certificate data is correct**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 645
    :catch_0
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2

    .line 655
    :catch_1
    move-exception v0

    .line 657
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_3

    .line 662
    :catch_2
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_4

    .line 685
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 251
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "selectedFont"

    const-string v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 745
    .line 746
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v1, "prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 749
    const-string v1, "SelectDialogIsActive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 750
    const-string v1, "SavedClickedItem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 751
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 3

    .prologue
    .line 599
    if-eqz p0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 604
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 273
    const/4 v4, -0x2

    if-ne p2, v4, :cond_2

    .line 274
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 277
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 321
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->dismiss()V

    .line 326
    :cond_1
    return-void

    .line 305
    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a72

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 307
    .local v3, uri:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 309
    const v4, 0x14000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 311
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 313
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a71

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #uri:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 315
    .restart local v3       #uri:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 317
    :cond_3
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 318
    iput-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "arg0"

    .prologue
    const v9, 0x7f090a6d

    const v8, 0x7f090a6c

    const v6, 0x7f090a69

    const/4 v7, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v4, "PRABHAT"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 116
    invoke-virtual {p0, v6}, Lcom/android/settings/flipfont/FontListActivity;->setTitle(I)V

    .line 118
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 119
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 120
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0, v6}, Lcom/android/settings/flipfont/FontListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 122
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040074

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 123
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 127
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 134
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f0b0148

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    .line 136
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 138
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 140
    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EasySettingsBundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 145
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v1, :cond_6

    .line 147
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v4, "EasySettings"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    .line 155
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_1
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEasySettingsCall  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->setupAlert()V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, okButton:Ljava/lang/String;
    :goto_2
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v4, "MONOTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 180
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    if-eqz v4, :cond_9

    .line 183
    const-string v3, "HelveticaNeueRegular.xml"

    .line 184
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 185
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_3
    iget v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-gez v4, :cond_2

    .line 205
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 209
    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 218
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 219
    const v4, 0x7f090a73

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->setTitle(I)V

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    .line 223
    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    if-eqz v4, :cond_4

    .line 224
    iput-boolean v7, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->selectDialog()V

    .line 229
    :cond_4
    const-string v4, "PRABHAT"

    const-string v5, "onCreate() - end"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 130
    .end local v2           #okButton:Ljava/lang/String;
    .end local v3           #selectedFont:Ljava/lang/String;
    :cond_5
    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CHC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 150
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_6
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 153
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_7
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 170
    .restart local v3       #selectedFont:Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2       #okButton:Ljava/lang/String;
    goto/16 :goto_2

    .line 190
    :cond_9
    const-string v3, "default"

    .line 191
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 192
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 198
    :cond_a
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 200
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "which"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 334
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-ne p3, v5, :cond_0

    .line 397
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v3, 0x0

    .line 340
    .local v3, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 341
    .local v1, fontName:Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 342
    iput p3, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 344
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, press_apkname:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 346
    iget-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    if-eqz v5, :cond_1

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_1
    if-ge p3, v8, :cond_2

    .line 352
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a6f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 354
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 365
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090077

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$2;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090078

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$1;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$3;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a70

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 390
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 391
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 393
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 394
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    goto/16 :goto_0

    .line 356
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a6e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 358
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v5, :cond_3

    .line 359
    new-instance v5, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 360
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 362
    :cond_3
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public onOkButtonPressed()Z
    .locals 33

    .prologue
    .line 459
    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, apkname:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    move/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 467
    sget-boolean v28, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v28, :cond_0

    .line 468
    const-string v28, "FlipFont"

    const-string v29, "**onOkButtonPressed - bad font**"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    const/16 v28, 0x0

    .line 592
    :goto_0
    return v28

    .line 472
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 477
    :goto_1
    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 481
    new-instance v28, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 485
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 487
    .local v26, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 492
    new-instance v15, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v15}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 493
    .local v15, fontWriter:Lcom/android/settings/flipfont/FontWriter;
    if-eqz v26, :cond_3

    const-string v28, "default"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 495
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "sans.loc"

    const-string v30, "default#default"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    if-nez v26, :cond_5

    .line 497
    const-string v28, "FontListActivity"

    const-string v29, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 475
    .end local v15           #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .end local v26           #selectedFont:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 502
    .restart local v15       #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .restart local v26       #selectedFont:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v25

    .line 504
    .local v25, sansTypeface:Lcom/android/settings/flipfont/Typeface;
    const-string v28, ".xml"

    const-string v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 505
    .local v16, fontdir:Ljava/lang/String;
    const-string v28, " "

    const-string v29, "-"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 508
    .local v14, fontDir:Ljava/io/File;
    const/16 v27, 0x0

    .line 509
    .local v27, tpf:Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v25, :cond_6

    .line 510
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 511
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v27, Lcom/android/settings/flipfont/TypefaceFile;

    .line 514
    .restart local v27       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 516
    .local v20, press_apknam:Ljava/lang/String;
    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v29, 0x80

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 518
    .local v8, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v22

    .line 521
    .local v22, res:Landroid/content/res/Resources;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 522
    .local v9, assetManager:Landroid/content/res/AssetManager;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "fonts/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 524
    .local v19, in:Ljava/io/InputStream;
    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v15, v14, v0, v1}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v9           #assetManager:Landroid/content/res/AssetManager;
    .end local v19           #in:Ljava/io/InputStream;
    .end local v20           #press_apknam:Ljava/lang/String;
    .end local v22           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 525
    :catch_0
    move-exception v13

    .line 526
    .local v13, ex:Ljava/lang/Exception;
    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception in file operation, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 531
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v17           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "sans.loc"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "#"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 535
    .local v6, am:Landroid/app/IActivityManager;
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 536
    .local v10, config:Landroid/content/res/Configuration;
    new-instance v21, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 541
    .local v21, randomizer:Ljava/util/Random;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->hashCode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    iput v0, v10, Landroid/content/res/Configuration;->FlipFont:I

    .line 542
    invoke-interface {v6, v10}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    .end local v6           #am:Landroid/app/IActivityManager;
    .end local v10           #config:Landroid/content/res/Configuration;
    .end local v21           #randomizer:Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v29, "activity"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 552
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/16 v28, 0x32

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 553
    .local v5, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v17, 0x1

    .line 554
    .restart local v17       #i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 555
    .local v3, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 557
    .local v24, s:Ljava/lang/String;
    const-string v28, "com.android.settings"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_7

    const-string v28, "com.samsung.music"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_7

    const-string v28, "com.sec.android.app.music"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_7

    .line 558
    const-string v28, "com.infraware.polarisoffice"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisoffice4"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisviewer4"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisoffice5"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisviewer5"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_9

    .line 562
    :cond_8
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 545
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v24           #s:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 547
    .local v11, e:Landroid/os/RemoteException;
    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Intentionally left blank, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 565
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v3       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v5       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v17       #i:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v24       #s:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 572
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v24           #s:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 574
    const-string v28, "FontListActivity"

    const-string v29, "FORCE CLOSE PACKAGE :  com.sec.android.easysettings"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v28, "com.sec.android.easysettings"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 577
    const-string v28, "FontListActivity"

    const-string v29, "RESTARTING PACKAGE :  com.sec.android.easysettings"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 579
    .local v12, easySettingsIntent:Landroid/content/Intent;
    const-string v28, "com.sec.android.easysettings"

    const-string v29, "com.sec.android.easysettings.EasySettingsHomeActivity"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/flipfont/FontListActivity;->startActivity(Landroid/content/Intent;)V

    .line 586
    .end local v12           #easySettingsIntent:Landroid/content/Intent;
    :cond_b
    const-string v28, "com.android.settings"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 588
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 589
    .local v23, returnIntent:Landroid/content/Intent;
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/flipfont/FontListActivity;->setResult(ILandroid/content/Intent;)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->restartLater()V

    .line 592
    const/16 v28, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 242
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 236
    return-void
.end method

.method public restartLater()V
    .locals 0

    .prologue
    .line 451
    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->dismiss()V

    .line 454
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 3

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 732
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 737
    const-string v1, "SelectDialogIsActive"

    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 738
    const-string v1, "SavedClickedItem"

    iget v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 741
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .parameter "selectedFont"

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 261
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 402
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    .line 403
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 404
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 405
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a6f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 407
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 414
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090077

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$5;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090078

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$4;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$4;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$6;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$6;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a70

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 440
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 441
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 442
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 444
    return-void

    .line 409
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a6e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 411
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 412
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

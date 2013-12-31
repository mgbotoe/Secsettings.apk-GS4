.class public Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;
.super Ljava/lang/Object;
.source "HandwritingLanguageTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageInfo"
.end annotation


# instance fields
.field language:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .parameter "titleString"
    .parameter "lang"
    .parameter "loc"

    .prologue
    .line 547
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;->title:Ljava/lang/String;

    .line 549
    iput-object p2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;->language:Ljava/lang/String;

    .line 550
    iput-object p3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;->locale:Ljava/util/Locale;

    .line 551
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;->title:Ljava/lang/String;

    return-object v0
.end method

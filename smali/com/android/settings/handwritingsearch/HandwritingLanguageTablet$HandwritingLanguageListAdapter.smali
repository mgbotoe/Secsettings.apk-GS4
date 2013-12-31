.class public Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HandwritingLanguageTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandwritingLanguageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;


# direct methods
.method public constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;Landroid/content/Context;I[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "objects"

    .prologue
    const/4 v0, 0x0

    .line 484
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    .line 485
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 480
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    .line 482
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 487
    iput-object p2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    .line 488
    iput-object p4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    .line 489
    iput p3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mResourceId:I

    .line 491
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 492
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 526
    if-nez p2, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mResourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 528
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 533
    .local v0, textView:Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1030042

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    return-object v0

    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 530
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method

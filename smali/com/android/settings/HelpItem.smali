.class public Lcom/android/settings/HelpItem;
.super Ljava/lang/Object;
.source "HelpItem.java"


# instance fields
.field container:Landroid/view/View;

.field contentImageArea:Landroid/widget/FrameLayout;

.field contentImageView:Landroid/widget/ImageView;

.field contentPlayBtn:Landroid/widget/ImageButton;

.field contentTextView:Landroid/widget/TextView;

.field item:Landroid/widget/LinearLayout;

.field titleTextView:Landroid/widget/TextView;

.field titleTextView2:Landroid/widget/TextView;

.field tryBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter "inflater"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x7f04003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    .line 30
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    .line 34
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    .line 35
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    .line 36
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    .line 37
    return-void
.end method


# virtual methods
.method public getHelpView()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    return-object v0
.end method

.method public setContentImage(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    return-void
.end method

.method public setContentText(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    return-void
.end method

.method public setContentText(Landroid/text/SpannableString;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setContentVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public setImageMarginTop(I)V
    .locals 3
    .parameter "marginTop"

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x4

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method public setImageVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setTitle2Visibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public setTitleText(I)V
    .locals 2
    .parameter "res_id"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public setTitleTextWithOutCategory(I)V
    .locals 3
    .parameter "res_id"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    return-void
.end method

.method public setTitleTextWithOutCategory(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public usePlayButton(Z)V
    .locals 3
    .parameter "playable"

    .prologue
    .line 108
    if-eqz p1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0200ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/settings/HelpItem$1;

    invoke-direct {v2, p0}, Lcom/android/settings/HelpItem$1;-><init>(Lcom/android/settings/HelpItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 122
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

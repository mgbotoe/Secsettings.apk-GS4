.class public Lcom/android/settings/PenHelpFragment$PenHelpItem;
.super Ljava/lang/Object;
.source "PenHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenHelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PenHelpItem"
.end annotation


# instance fields
.field container:Landroid/view/View;

.field contentImageView:Landroid/widget/ImageView;

.field contentPlayBtn:Landroid/widget/ImageButton;

.field contentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/PenHelpFragment;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter
    .parameter "inflater"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->this$0:Lcom/android/settings/PenHelpFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const v0, 0x7f040101

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->titleTextView:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentTextView:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentImageView:Landroid/widget/ImageView;

    .line 213
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    .line 214
    return-void
.end method


# virtual methods
.method public getPenHelpView()Landroid/view/View;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    return-object v0
.end method

.method public setContentImage(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    return-void
.end method

.method public setContentText(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public usePlayButton(Z)V
    .locals 2
    .parameter "playable"

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;

    invoke-direct {v1, p0}, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;-><init>(Lcom/android/settings/PenHelpFragment$PenHelpItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_0
    return-void
.end method

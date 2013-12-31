.class Lcom/android/settings/SViewColor$2;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 233
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 234
    .local v0, mClickButton:Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 266
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    #getter for: Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$200(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    #getter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$100(Lcom/android/settings/SViewColor;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    #calls: Lcom/android/settings/SViewColor;->setfocusButton()V
    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$300(Lcom/android/settings/SViewColor;)V

    .line 270
    return-void

    .line 236
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 248
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 251
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 254
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 257
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 260
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON9:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 263
    :pswitch_9
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON10:I

    #setter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x7f0b00be
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

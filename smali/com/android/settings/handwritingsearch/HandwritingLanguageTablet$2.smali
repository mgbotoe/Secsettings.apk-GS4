.class Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;
.super Ljava/lang/Object;
.source "HandwritingLanguageTablet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "index"
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
    .line 223
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    #getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    #getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    #calls: Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->getDescriptionString()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$100(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

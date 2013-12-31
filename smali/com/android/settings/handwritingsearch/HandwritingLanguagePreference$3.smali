.class Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

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
    .line 207
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    #getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$100(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    #getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$300(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    #calls: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDescriptionString()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

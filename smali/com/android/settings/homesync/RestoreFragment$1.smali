.class Lcom/android/settings/homesync/RestoreFragment$1;
.super Ljava/lang/Object;
.source "RestoreFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/RestoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/RestoreFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/RestoreFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$1;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 149
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$1;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    #setter for: Lcom/android/settings/homesync/RestoreFragment;->mPasteType:I
    invoke-static {v0, p3}, Lcom/android/settings/homesync/RestoreFragment;->access$002(Lcom/android/settings/homesync/RestoreFragment;I)I

    .line 150
    const-string v0, "RestoreFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPasteType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$1;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    #getter for: Lcom/android/settings/homesync/RestoreFragment;->mPasteType:I
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment;->access$000(Lcom/android/settings/homesync/RestoreFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.class Lcom/android/settings/homesync/FileOperationProgress$3;
.super Lcom/android/settings/homesync/FileOperationPaste;
.source "FileOperationProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperationProgress;->startRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationProgress;Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Ljava/util/ArrayList;Lcom/android/settings/homesync/FileOperationPaste$PasteType;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 309
    .local p4, x2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;>;"
    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationProgress$3;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/homesync/FileOperationPaste;-><init>(Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Ljava/util/ArrayList;Lcom/android/settings/homesync/FileOperationPaste$PasteType;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V

    return-void
.end method


# virtual methods
.method protected done(Ljava/lang/Exception;)V
    .locals 7
    .parameter "exception"

    .prologue
    .line 313
    const-string v0, "FileOperationProgress"

    const-string v1, "FileOperationPaste.done()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v6, 0x0

    .line 315
    .local v6, resId:I
    const/4 v2, 0x0

    .line 316
    .local v2, notiResId:I
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->StorageDisconnected:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v0, v1, :cond_2

    .line 317
    const v6, 0x7f0914c2

    .line 318
    const v2, 0x7f0914cb

    .line 332
    :goto_0
    if-eqz v6, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 335
    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->filenameView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$3;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Lcom/android/settings/homesync/FileOperationProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$3;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Lcom/android/settings/homesync/FileOperationProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$3;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    const v3, 0x7f02009d

    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/homesync/FileOperationPaste;->getTotalSize()J

    move-result-wide v4

    #calls: Lcom/android/settings/homesync/FileOperationProgress;->makeNotification(Landroid/content/Context;IIJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings/homesync/FileOperationProgress;->access$100(Lcom/android/settings/homesync/FileOperationProgress;Landroid/content/Context;IIJ)V

    .line 346
    :cond_1
    return-void

    .line 319
    :cond_2
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->StorageFull:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v0, v1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$3;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    const v1, 0x7f0914ca

    invoke-virtual {v0, v1}, Lcom/android/settings/homesync/FileOperationProgress;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 321
    const v2, 0x7f0914cb

    goto :goto_0

    .line 322
    :cond_3
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->Canceled:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v0, v1, :cond_4

    .line 323
    const v6, 0x7f0914c6

    goto :goto_0

    .line 324
    :cond_4
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v0, v1, :cond_5

    .line 325
    const v6, 0x7f0914cb

    .line 326
    const v2, 0x7f0914cb

    goto :goto_0

    .line 328
    :cond_5
    const v6, 0x7f0914c4

    .line 329
    const v2, 0x7f0914c4

    goto/16 :goto_0

    .line 340
    :catch_0
    move-exception v0

    goto :goto_1
.end method

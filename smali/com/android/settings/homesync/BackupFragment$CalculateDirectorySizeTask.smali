.class Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;
.super Landroid/os/AsyncTask;
.source "BackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculateDirectorySizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/BackupFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/homesync/BackupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homesync/BackupFragment;Lcom/android/settings/homesync/BackupFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "arg0"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 338
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #setter for: Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$802(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 340
    new-instance v1, Lcom/android/settings/homesync/StorageMeasurement;

    invoke-direct {v1}, Lcom/android/settings/homesync/StorageMeasurement;-><init>()V

    .line 341
    .local v1, mMeasure:Lcom/android/settings/homesync/StorageMeasurement;
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$802(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 342
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$814(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 343
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$814(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 344
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$814(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 345
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Documents"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$814(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 346
    const-string v2, "BackupFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSourceTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v4}, Lcom/android/settings/homesync/BackupFragment;->access$800(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v2, v2, Lcom/android/settings/homesync/BackupFragment;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-eqz v2, :cond_0

    .line 350
    const-string v2, "BackupFragment"

    const-string v3, "mISpcBackupService is NOT NULL and calling getDirectorySize"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v3, v3, Lcom/android/settings/homesync/BackupFragment;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/secdata/Userdir/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/homesync/BackupFragment;->access$300(Lcom/android/settings/homesync/BackupFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Personal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/spc/service/ISpcBackupService;->getDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$902(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 352
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v3, v3, Lcom/android/settings/homesync/BackupFragment;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/secdata/Userdir/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/homesync/BackupFragment;->access$300(Lcom/android/settings/homesync/BackupFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Private"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/spc/service/ISpcBackupService;->getDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$1002(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 353
    const-string v2, "BackupFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDirectorySize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J
    invoke-static {v4}, Lcom/android/settings/homesync/BackupFragment;->access$900(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v4}, Lcom/android/settings/homesync/BackupFragment;->access$1000(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v2}, Lcom/android/settings/homesync/BackupFragment;->access$800(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v4}, Lcom/android/settings/homesync/BackupFragment;->access$1000(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 355
    :cond_0
    :try_start_1
    const-string v2, "BackupFragment"

    const-string v3, "mISpcBackupService is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    const-wide/16 v3, 0x0

    #setter for: Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$902(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 357
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    const-wide/16 v3, 0x0

    #setter for: Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/BackupFragment;->access$1002(Lcom/android/settings/homesync/BackupFragment;J)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v0, v1, v2}, Lcom/android/settings/homesync/BackupFragment;->access$702(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 369
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$400(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$400(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v1}, Lcom/android/settings/homesync/BackupFragment;->access$800(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/homesync/BackupFragment;->access$714(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$500(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$500(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J
    invoke-static {v1}, Lcom/android/settings/homesync/BackupFragment;->access$900(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/homesync/BackupFragment;->access$714(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$600(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$600(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v1}, Lcom/android/settings/homesync/BackupFragment;->access$1000(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/homesync/BackupFragment;->access$714(Lcom/android/settings/homesync/BackupFragment;J)J

    .line 376
    :cond_2
    invoke-static {}, Lcom/android/settings/homesync/BackupFragment;->access$1100()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v1}, Lcom/android/settings/homesync/BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/BackupFragment;

    #getter for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v2}, Lcom/android/settings/homesync/BackupFragment;->access$700(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.class public Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;
.super Ljava/lang/Object;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasteInfo"
.end annotation


# instance fields
.field destPath:Ljava/lang/String;

.field sourcePath:Ljava/lang/String;

.field type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V
    .locals 0
    .parameter "src"
    .parameter "dst"
    .parameter "type"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    .line 101
    return-void
.end method

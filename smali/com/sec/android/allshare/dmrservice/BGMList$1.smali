.class final Lcom/sec/android/allshare/dmrservice/BGMList$1;
.super Ljava/lang/Object;
.source "BGMList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/BGMList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/allshare/dmrservice/BGMList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/dmrservice/BGMList;
    .locals 1
    .parameter "in"

    .prologue
    .line 106
    new-instance v0, Lcom/sec/android/allshare/dmrservice/BGMList;

    invoke-direct {v0, p1}, Lcom/sec/android/allshare/dmrservice/BGMList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/BGMList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/dmrservice/BGMList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/dmrservice/BGMList;
    .locals 1
    .parameter "size"

    .prologue
    .line 109
    new-array v0, p1, [Lcom/sec/android/allshare/dmrservice/BGMList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/BGMList$1;->newArray(I)[Lcom/sec/android/allshare/dmrservice/BGMList;

    move-result-object v0

    return-object v0
.end method

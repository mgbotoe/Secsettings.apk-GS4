.class public Lcom/android/settings/search/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchItem$MenuInfoItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iconResId:I

.field public id_key:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public menuPath:Ljava/lang/String;

.field public menuType:I

.field public pakageName:Ljava/lang/String;

.field public parentsKey:Ljava/lang/String;

.field public rowId:I

.field public summary:Ljava/lang/String;

.field public summaryResId:J

.field public title:Ljava/lang/String;

.field public titleResId:J

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/android/settings/search/SearchItem$1;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 15
    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 19
    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 21
    iput v1, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 24
    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 28
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/android/settings/search/SearchItem;->value:I

    .line 36
    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 15
    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 19
    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 21
    iput v1, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 24
    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 28
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/android/settings/search/SearchItem;->value:I

    .line 36
    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "arg1"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-wide v0, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-wide v0, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget v0, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void
.end method

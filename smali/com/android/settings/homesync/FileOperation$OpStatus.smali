.class public final enum Lcom/android/settings/homesync/FileOperation$OpStatus;
.super Ljava/lang/Enum;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/homesync/FileOperation$OpStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/homesync/FileOperation$OpStatus;

.field public static final enum CANCELLED:Lcom/android/settings/homesync/FileOperation$OpStatus;

.field public static final enum FINISHED:Lcom/android/settings/homesync/FileOperation$OpStatus;

.field public static final enum INITIALIZED:Lcom/android/settings/homesync/FileOperation$OpStatus;

.field public static final enum NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

.field public static final enum RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

.field public static final enum STOPPTEDBYERROR:Lcom/android/settings/homesync/FileOperation$OpStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/homesync/FileOperation$OpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

    .line 76
    new-instance v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/homesync/FileOperation$OpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->INITIALIZED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    .line 77
    new-instance v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/homesync/FileOperation$OpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    .line 78
    new-instance v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/homesync/FileOperation$OpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->CANCELLED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    .line 79
    new-instance v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    const-string v1, "STOPPTEDBYERROR"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/homesync/FileOperation$OpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->STOPPTEDBYERROR:Lcom/android/settings/homesync/FileOperation$OpStatus;

    .line 80
    new-instance v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/homesync/FileOperation$OpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->FINISHED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/homesync/FileOperation$OpStatus;

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->INITIALIZED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->CANCELLED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->STOPPTEDBYERROR:Lcom/android/settings/homesync/FileOperation$OpStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/homesync/FileOperation$OpStatus;->FINISHED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->$VALUES:[Lcom/android/settings/homesync/FileOperation$OpStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/homesync/FileOperation$OpStatus;
    .locals 1
    .parameter

    .prologue
    .line 74
    const-class v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homesync/FileOperation$OpStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/homesync/FileOperation$OpStatus;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->$VALUES:[Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-virtual {v0}, [Lcom/android/settings/homesync/FileOperation$OpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/homesync/FileOperation$OpStatus;

    return-object v0
.end method

.class public Lcom/android/settings/samba/ServerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;
    }
.end annotation


# static fields
.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mUsbMounted:Z

.field public static mUsbStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/samba/ServerReceiver$UsbStorage;",
            ">;"
        }
    .end annotation
.end field

.field public static mUsbStorageMount:I


# instance fields
.field private m_OnChangeServerStatusListener:Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/android/settings/samba/ServerReceiver;->mSdCardStoragePath:Ljava/lang/String;

    .line 43
    sput-boolean v1, Lcom/android/settings/samba/ServerReceiver;->mUsbMounted:Z

    .line 45
    sput-boolean v1, Lcom/android/settings/samba/ServerReceiver;->mSdCardMounted:Z

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/samba/ServerReceiver;->mUsbStorageMount:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/samba/ServerReceiver;->mUsbStorage:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/samba/ServerReceiver;->m_OnChangeServerStatusListener:Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/samba/ServerReceiver;->m_OnChangeServerStatusListener:Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;

    .line 62
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 115
    return-void
.end method

.method public setOnChangeServerStatusListener(Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/samba/ServerReceiver;->m_OnChangeServerStatusListener:Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;

    .line 66
    return-void
.end method

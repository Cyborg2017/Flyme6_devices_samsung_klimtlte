.class public Lcyanogenmod/app/CustomTileListenerService;
.super Landroid/app/Service;
.source "CustomTileListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "cyanogenmod.app.CustomTileListenerService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentUser:I

.field private mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

.field private mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;


# direct methods
.method static synthetic -get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "["

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcyanogenmod/app/CustomTileListenerService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "]"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 48
    return-void
.end method

.method private final getStatusBarInterface()Lcyanogenmod/app/ICMStatusBarManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v0, "cmstatusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMStatusBarManager;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 76
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    return-object v0
.end method

.method private isBound()Z
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcyanogenmod/app/CustomTileListenerService;->getStatusBarInterface()Lcyanogenmod/app/ICMStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    if-nez v0, :cond_1

    .line 226
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CustomTile listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    invoke-direct {v0, p0, v1}, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;-><init>(Lcyanogenmod/app/CustomTileListenerService;Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;)V

    iput-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 68
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    return-object v0
.end method

.method public onCustomTilePosted(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 175
    return-void
.end method

.method public onCustomTileRemoved(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 186
    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcyanogenmod/app/CustomTileListenerService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 97
    .local v0, "statusBarInterface":Lcyanogenmod/app/ICMStatusBarManager;
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    invoke-direct {v1, p0, v2}, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;-><init>(Lcyanogenmod/app/CustomTileListenerService;Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;)V

    iput-object v1, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 99
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    invoke-interface {v0, v1, p2, p3}, Lcyanogenmod/app/ICMStatusBarManager;->registerListener(Lcyanogenmod/app/ICustomTileListener;Landroid/content/ComponentName;I)V

    .line 100
    iput p3, p0, Lcyanogenmod/app/CustomTileListenerService;->mCurrentUser:I

    .line 92
    :cond_1
    return-void
.end method

.method public final removeCustomTile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Lcyanogenmod/app/CustomTileListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 217
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 218
    iget-object v2, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 217
    invoke-interface {v1, v2, p1, p2, p3}, Lcyanogenmod/app/ICMStatusBarManager;->removeCustomTileFromListener(Lcyanogenmod/app/ICustomTileListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact cmstautusbar manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterAsSystemService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-direct {p0}, Lcyanogenmod/app/CustomTileListenerService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 114
    .local v0, "statusBarInterface":Lcyanogenmod/app/ICMStatusBarManager;
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    iget v2, p0, Lcyanogenmod/app/CustomTileListenerService;->mCurrentUser:I

    invoke-interface {v0, v1, v2}, Lcyanogenmod/app/ICMStatusBarManager;->unregisterListener(Lcyanogenmod/app/ICustomTileListener;I)V

    .line 115
    iput-object v3, p0, Lcyanogenmod/app/CustomTileListenerService;->mWrapper:Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 116
    iput-object v3, p0, Lcyanogenmod/app/CustomTileListenerService;->mStatusBarService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 111
    .end local v0    # "statusBarInterface":Lcyanogenmod/app/ICMStatusBarManager;
    :cond_0
    return-void
.end method
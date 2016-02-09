.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterfaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mOnServiceReady:Ljava/lang/Runnable;

.field private mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceInterface:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "onServiceReady"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/IInterface;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;, "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder<TT;>;"
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    .local p3, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/IInterface;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;)V

    iput-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 26
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mServiceClass:Ljava/lang/Class;

    .line 28
    iput-object p3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mInterfaceClass:Ljava/lang/Class;

    .line 29
    iput-object p4, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mOnServiceReady:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mServiceClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;)Ljava/lang/Class;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mInterfaceClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;Landroid/os/IInterface;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mServiceInterface:Landroid/os/IInterface;

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mOnServiceReady:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getServiceInterface()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;, "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder<TT;>;"
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mServiceInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method public unBind()V
    .registers 3

    .prologue
    .line 35
    .local p0, "this":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;, "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder<TT;>;"
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 36
    return-void
.end method

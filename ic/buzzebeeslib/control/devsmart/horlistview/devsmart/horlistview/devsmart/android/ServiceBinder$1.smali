.class Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;
.super Ljava/lang/Object;
.source "ServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "asInterface":Ljava/lang/reflect/Method;
    :try_start_2
    iget-object v5, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;

    # getter for: Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mInterfaceClass:Ljava/lang/Class;
    invoke-static {v5}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    :goto_d
    if-lt v4, v6, :cond_33

    .line 56
    :goto_f
    iget-object v5, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    invoke-static {v5, v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->access$1(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;Landroid/os/IInterface;)V

    .line 57
    iget-object v4, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;

    # getter for: Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mOnServiceReady:Ljava/lang/Runnable;
    invoke-static {v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->access$2(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 58
    iget-object v4, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;

    # getter for: Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->mOnServiceReady:Ljava/lang/Runnable;
    invoke-static {v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;->access$2(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_32
    :goto_32
    return-void

    .line 48
    :cond_33
    aget-object v1, v5, v4

    .line 49
    .local v1, "c":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "className":Ljava/lang/String;
    const-string v7, "Stub"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 51
    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_53

    move-result-object v0

    .line 52
    goto :goto_f

    .line 48
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 61
    .end local v1    # "c":Ljava/lang/Class;
    .end local v2    # "className":Ljava/lang/String;
    :catch_53
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    const-class v4, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ServiceBinder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to bind to service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 71
    return-void
.end method

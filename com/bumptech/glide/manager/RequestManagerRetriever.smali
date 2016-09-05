.class public Lcom/bumptech/glide/manager/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final c:Lcom/bumptech/glide/manager/RequestManagerRetriever;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/bumptech/glide/RequestManager;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->c:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->b:Ljava/util/Map;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->e:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public static a()Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->c:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .registers 6

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->d:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_1f

    .line 68
    monitor-enter p0

    .line 69
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->d:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_1e

    .line 73
    new-instance v0, Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/manager/ApplicationLifecycle;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/ApplicationLifecycle;-><init>()V

    new-instance v3, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;

    invoke-direct {v3}, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->d:Lcom/bumptech/glide/RequestManager;

    .line 76
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_22

    .line 79
    :cond_1f
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->d:Lcom/bumptech/glide/RequestManager;

    return-object v0

    .line 76
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private static b(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_15
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/bumptech/glide/util/Util;->c()Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_15

    .line 123
    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 127
    :goto_14
    return-object v0

    .line 125
    :cond_15
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->b(Landroid/app/Activity;)V

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_14
.end method

.method public a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .registers 4

    .prologue
    .line 83
    if-nez p1, :cond_b

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_b
    invoke-static {}, Lcom/bumptech/glide/util/Util;->b()Z

    move-result v0

    if-eqz v0, :cond_3a

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_3a

    .line 86
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_20

    .line 87
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 95
    :goto_1f
    return-object v0

    .line 88
    :cond_20
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 89
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_1f

    .line 90
    :cond_2b
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3a

    .line 91
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_1f

    .line 95
    :cond_3a
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_1f
.end method

.method a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->b()Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 170
    if-nez v0, :cond_1a

    .line 171
    new-instance v0, Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->c()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V

    .line 172
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a(Lcom/bumptech/glide/RequestManager;)V

    .line 174
    :cond_1a
    return-object v0
.end method

.method a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
    .registers 7

    .prologue
    .line 195
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b()Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 197
    if-nez v0, :cond_1a

    .line 198
    new-instance v0, Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->c()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V

    .line 199
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a(Lcom/bumptech/glide/RequestManager;)V

    .line 201
    :cond_1a
    return-object v0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .registers 3

    .prologue
    .line 99
    invoke-static {}, Lcom/bumptech/glide/util/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 100
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 104
    :goto_e
    return-object v0

    .line 102
    :cond_f
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->b(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_e
.end method

.method a(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 153
    const-string/jumbo v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 154
    if-nez v0, :cond_37

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 156
    if-nez v0, :cond_37

    .line 157
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 160
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 163
    :cond_37
    return-object v0
.end method

.method a(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .registers 5

    .prologue
    .line 178
    const-string/jumbo v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 182
    if-nez v0, :cond_37

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 184
    if-nez v0, :cond_37

    .line 185
    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 188
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->e:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :cond_37
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 206
    const/4 v2, 0x1

    .line 209
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4a

    .line 221
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    .line 223
    :goto_a
    if-eqz v2, :cond_32

    if-nez v1, :cond_32

    const-string/jumbo v1, "RMRetriever"

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 224
    const-string/jumbo v1, "RMRetriever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_32
    return v2

    .line 211
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    .line 213
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    .line 216
    :pswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    .line 218
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    .line 209
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_3e
    .end packed-switch
.end method

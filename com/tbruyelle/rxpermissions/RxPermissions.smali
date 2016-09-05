.class public Lcom/tbruyelle/rxpermissions/RxPermissions;
.super Ljava/lang/Object;
.source "RxPermissions.java"


# static fields
.field private static a:Lcom/tbruyelle/rxpermissions/RxPermissions;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lrx/subjects/PublishSubject",
            "<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->c:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->b:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;
    .registers 3

    .prologue
    .line 42
    sget-object v0, Lcom/tbruyelle/rxpermissions/RxPermissions;->a:Lcom/tbruyelle/rxpermissions/RxPermissions;

    if-nez v0, :cond_f

    .line 43
    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissions;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tbruyelle/rxpermissions/RxPermissions;->a:Lcom/tbruyelle/rxpermissions/RxPermissions;

    .line 45
    :cond_f
    sget-object v0, Lcom/tbruyelle/rxpermissions/RxPermissions;->a:Lcom/tbruyelle/rxpermissions/RxPermissions;

    return-object v0
.end method

.method static synthetic a(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)Lrx/Observable;
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->d([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private a(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;",
            "Lrx/Observable",
            "<*>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    if-nez p1, :cond_8

    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/Observable;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 180
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1, p2}, Lrx/Observable;->a(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    goto :goto_7
.end method

.method private varargs c([Ljava/lang/String;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 167
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_20

    aget-object v0, p1, v1

    .line 168
    iget-object v3, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/PublishSubject;

    .line 169
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->d()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 170
    :cond_17
    invoke-static {}, Lrx/Observable;->a()Lrx/Observable;

    move-result-object v0

    .line 173
    :goto_1b
    return-object v0

    .line 167
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 173
    :cond_20
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/Observable;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_1b
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->d:Z

    if-eqz v0, :cond_a

    .line 65
    const-string/jumbo v0, "RxPermissions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_a
    return-void
.end method

.method private varargs d([Ljava/lang/String;)Lrx/Observable;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->d:Z

    if-eqz v0, :cond_23

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requesting permissions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->c(Ljava/lang/String;)V

    .line 189
    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    array-length v5, p1

    move v1, v2

    :goto_30
    if-ge v1, v5, :cond_80

    aget-object v6, p1, v1

    .line 198
    invoke-virtual {p0, v6}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 201
    new-instance v0, Lcom/tbruyelle/rxpermissions/Permission;

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lrx/Observable;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    .line 205
    :cond_4b
    invoke-virtual {p0, v6}, Lcom/tbruyelle/rxpermissions/RxPermissions;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 207
    new-instance v0, Lcom/tbruyelle/rxpermissions/Permission;

    invoke-direct {v0, v6, v2}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lrx/Observable;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 211
    :cond_5e
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/PublishSubject;

    .line 216
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->d()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 217
    :cond_6e
    if-nez v0, :cond_73

    .line 218
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_73
    invoke-static {}, Lrx/subjects/PublishSubject;->c()Lrx/subjects/PublishSubject;

    move-result-object v0

    .line 221
    iget-object v7, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->c:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_7c
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 226
    :cond_80
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    .line 228
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 227
    invoke-virtual {p0, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->b([Ljava/lang/String;)V

    .line 230
    :cond_95
    invoke-static {v3}, Lrx/Observable;->a(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->a(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private e(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs a(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_e

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RxPermissions.request/requestEach requires at least one input permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_e
    invoke-direct {p0, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->c([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/tbruyelle/rxpermissions/RxPermissions$1;

    invoke-direct {v1, p0, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions$1;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/String;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->b(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method a(I[Ljava/lang/String;[I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 315
    array-length v4, p2

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_52

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRequestPermissionsResult  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->c(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->c:Ljava/util/Map;

    aget-object v1, p2, v3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/PublishSubject;

    .line 319
    if-nez v0, :cond_33

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RxPermissions.onRequestPermissionsResult invoked but didn\'t find the corresponding permission request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_33
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->c:Ljava/util/Map;

    aget-object v5, p2, v3

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    aget v1, p3, v3

    if-nez v1, :cond_50

    const/4 v1, 0x1

    .line 325
    :goto_3f
    new-instance v5, Lcom/tbruyelle/rxpermissions/Permission;

    aget-object v6, p2, v3

    invoke-direct {v5, v6, v1}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Lrx/subjects/PublishSubject;->a_(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->i_()V

    .line 315
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_50
    move v1, v2

    .line 324
    goto :goto_3f

    .line 328
    :cond_52
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->d:Z

    .line 61
    return-void
.end method

.method a()Z
    .registers 3

    .prologue
    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public varargs b(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    array-length v1, p2

    .line 140
    invoke-virtual {v0, v1}, Lrx/Observable;->a(I)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/tbruyelle/rxpermissions/RxPermissions$2;

    invoke-direct {v1, p0}, Lcom/tbruyelle/rxpermissions/RxPermissions$2;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions;)V

    .line 141
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .registers 3

    .prologue
    .line 305
    const-string/jumbo v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->c(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/Subject;

    .line 309
    invoke-virtual {v0}, Lrx/subjects/Subject;->i_()V

    goto :goto_10

    .line 311
    :cond_20
    return-void
.end method

.method b([Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startShadowActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->c(Ljava/lang/String;)V

    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->b:Landroid/content/Context;

    const-class v2, Lcom/tbruyelle/rxpermissions/ShadowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    const-string/jumbo v1, "permissions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

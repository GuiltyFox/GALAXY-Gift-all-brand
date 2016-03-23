.class public Lcom/tbruyelle/rxpermissions/RxPermissions;
.super Ljava/lang/Object;
.source "RxPermissions.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RxPermissions"

.field private static sSingleton:Lcom/tbruyelle/rxpermissions/RxPermissions;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mLogging:Z

.field private mSubjects:Ljava/util/Map;
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


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mSubjects:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mCtx:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)Lrx/Observable;
    .registers 3
    .param p0, "x0"    # Lcom/tbruyelle/rxpermissions/RxPermissions;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request_([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/tbruyelle/rxpermissions/RxPermissions;->sSingleton:Lcom/tbruyelle/rxpermissions/RxPermissions;

    if-nez v0, :cond_f

    .line 43
    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissions;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tbruyelle/rxpermissions/RxPermissions;->sSingleton:Lcom/tbruyelle/rxpermissions/RxPermissions;

    .line 45
    :cond_f
    sget-object v0, Lcom/tbruyelle/rxpermissions/RxPermissions;->sSingleton:Lcom/tbruyelle/rxpermissions/RxPermissions;

    return-object v0
.end method

.method private isGranted_(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mCtx:Landroid/content/Context;

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

.method private isRevoked_(Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mLogging:Z

    if-eqz v0, :cond_a

    .line 65
    const-string/jumbo v0, "RxPermissions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_a
    return-void
.end method

.method private oneOf(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
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
    .local p1, "trigger":Lrx/Observable;, "Lrx/Observable<*>;"
    .local p2, "pending":Lrx/Observable;, "Lrx/Observable<*>;"
    if-nez p1, :cond_8

    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 180
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1, p2}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    goto :goto_7
.end method

.method private varargs pending([Ljava/lang/String;)Lrx/Observable;
    .registers 7
    .param p1, "permissions"    # [Ljava/lang/String;
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
    array-length v3, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1e

    aget-object v0, p1, v2

    .line 168
    .local v0, "p":Ljava/lang/String;
    iget-object v4, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mSubjects:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/PublishSubject;

    .line 169
    .local v1, "s":Lrx/subjects/PublishSubject;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lrx/subjects/PublishSubject;->hasCompleted()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 170
    :cond_16
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v2

    .line 173
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "s":Lrx/subjects/PublishSubject;
    :goto_1a
    return-object v2

    .line 167
    .restart local v0    # "p":Ljava/lang/String;
    .restart local v1    # "s":Lrx/subjects/PublishSubject;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "s":Lrx/subjects/PublishSubject;
    :cond_1e
    const/4 v2, 0x0

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    goto :goto_1a
.end method

.method private varargs request_([Ljava/lang/String;)Lrx/Observable;
    .registers 11
    .param p1, "permissions"    # [Ljava/lang/String;
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
    const/4 v5, 0x0

    .line 185
    iget-boolean v4, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mLogging:Z

    if-eqz v4, :cond_23

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requesting permissions "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-static {v6, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tbruyelle/rxpermissions/RxPermissions;->log(Ljava/lang/String;)V

    .line 189
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<Lcom/tbruyelle/rxpermissions/Permission;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "unrequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, p1

    move v4, v5

    :goto_30
    if-ge v4, v6, :cond_7f

    aget-object v1, p1, v4

    .line 198
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 201
    new-instance v7, Lcom/tbruyelle/rxpermissions/Permission;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-static {v7}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 205
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isRevoked(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 207
    new-instance v7, Lcom/tbruyelle/rxpermissions/Permission;

    invoke-direct {v7, v1, v5}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-static {v7}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 211
    :cond_5d
    iget-object v7, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mSubjects:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/PublishSubject;

    .line 216
    .local v2, "subject":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lcom/tbruyelle/rxpermissions/Permission;>;"
    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Lrx/subjects/PublishSubject;->hasCompleted()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 217
    :cond_6d
    if-nez v2, :cond_72

    .line 218
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_72
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v2

    .line 221
    iget-object v7, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mSubjects:Ljava/util/Map;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_7b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 226
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "subject":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lcom/tbruyelle/rxpermissions/Permission;>;"
    :cond_7f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_94

    .line 228
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 227
    invoke-virtual {p0, v4}, Lcom/tbruyelle/rxpermissions/RxPermissions;->startShadowActivity([Ljava/lang/String;)V

    .line 230
    :cond_94
    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v4

    return-object v4
.end method

.method private varargs shouldShowRequestPermissionRationale_(Landroid/app/Activity;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 256
    array-length v3, p2

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_17

    aget-object v0, p2, v2

    .line 257
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p1, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 261
    .end local v0    # "p":Ljava/lang/String;
    :goto_13
    return v1

    .line 256
    .restart local v0    # "p":Ljava/lang/String;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 261
    .end local v0    # "p":Ljava/lang/String;
    :cond_17
    const/4 v1, 0x1

    goto :goto_13
.end method


# virtual methods
.method public isGranted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isGranted_(Ljava/lang/String;)Z

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

.method isMarshmallow()Z
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

.method public isRevoked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isRevoked_(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method onDestroy()V
    .registers 4

    .prologue
    .line 305
    const-string/jumbo v1, "onDestroy"

    invoke-direct {p0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->log(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mSubjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/Subject;

    .line 309
    .local v0, "subject":Lrx/subjects/Subject;
    invoke-virtual {v0}, Lrx/subjects/Subject;->onCompleted()V

    goto :goto_10

    .line 311
    .end local v0    # "subject":Lrx/subjects/Subject;
    :cond_20
    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p2

    .local v2, "size":I
    :goto_2
    if-ge v1, v2, :cond_50

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRequestPermissionsResult  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tbruyelle/rxpermissions/RxPermissions;->log(Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mSubjects:Ljava/util/Map;

    aget-object v5, p2, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/subjects/PublishSubject;

    .line 319
    .local v3, "subject":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lcom/tbruyelle/rxpermissions/Permission;>;"
    if-nez v3, :cond_32

    .line 321
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "RxPermissions.onRequestPermissionsResult invoked but didn\'t find the corresponding permission request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_32
    iget-object v4, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mSubjects:Ljava/util/Map;

    aget-object v5, p2, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    aget v4, p3, v1

    if-nez v4, :cond_4e

    const/4 v0, 0x1

    .line 325
    .local v0, "granted":Z
    :goto_3e
    new-instance v4, Lcom/tbruyelle/rxpermissions/Permission;

    aget-object v5, p2, v1

    invoke-direct {v4, v5, v0}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {v3}, Lrx/subjects/PublishSubject;->onCompleted()V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 324
    .end local v0    # "granted":Z
    :cond_4e
    const/4 v0, 0x0

    goto :goto_3e

    .line 328
    .end local v3    # "subject":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lcom/tbruyelle/rxpermissions/Permission;>;"
    :cond_50
    return-void
.end method

.method public varargs request(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
    .registers 5
    .param p2, "permissions"    # [Ljava/lang/String;
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
    .local p1, "trigger":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->requestEach(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    array-length v1, p2

    .line 140
    invoke-virtual {v0, v1}, Lrx/Observable;->buffer(I)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/tbruyelle/rxpermissions/RxPermissions$2;

    invoke-direct {v1, p0}, Lcom/tbruyelle/rxpermissions/RxPermissions$2;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions;)V

    .line 141
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs request([Ljava/lang/String;)Lrx/Observable;
    .registers 3
    .param p1, "permissions"    # [Ljava/lang/String;
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

    invoke-virtual {p0, v0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs requestEach(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
    .registers 5
    .param p2, "permissions"    # [Ljava/lang/String;
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
    .local p1, "trigger":Lrx/Observable;, "Lrx/Observable<*>;"
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
    invoke-direct {p0, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->pending([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->oneOf(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/tbruyelle/rxpermissions/RxPermissions$1;

    invoke-direct {v1, p0, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions$1;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs requestEach([Ljava/lang/String;)Lrx/Observable;
    .registers 3
    .param p1, "permissions"    # [Ljava/lang/String;
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
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->requestEach(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setLogging(Z)V
    .registers 2
    .param p1, "logging"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mLogging:Z

    .line 61
    return-void
.end method

.method public varargs shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Lrx/Observable;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-nez v0, :cond_10

    .line 248
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 250
    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->shouldShowRequestPermissionRationale_(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_f
.end method

.method startShadowActivity([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startShadowActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->log(Ljava/lang/String;)V

    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/tbruyelle/rxpermissions/ShadowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "permissions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

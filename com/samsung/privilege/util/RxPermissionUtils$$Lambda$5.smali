.class final synthetic Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/samsung/privilege/util/AddOnPermissions;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/util/AddOnPermissions;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$5;->arg$1:Lcom/samsung/privilege/util/AddOnPermissions;

    return-void
.end method

.method private static get$Lambda(Lcom/samsung/privilege/util/AddOnPermissions;)Lrx/functions/Action1;
    .registers 2

    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$5;-><init>(Lcom/samsung/privilege/util/AddOnPermissions;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/samsung/privilege/util/AddOnPermissions;)Lrx/functions/Action1;
    .registers 2

    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$5;-><init>(Lcom/samsung/privilege/util/AddOnPermissions;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$5;->arg$1:Lcom/samsung/privilege/util/AddOnPermissions;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils;->access$lambda$4(Lcom/samsung/privilege/util/AddOnPermissions;Ljava/lang/Throwable;)V

    return-void
.end method

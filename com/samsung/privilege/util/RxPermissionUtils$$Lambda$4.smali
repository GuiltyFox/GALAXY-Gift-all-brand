.class final synthetic Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:I

.field private final arg$4:Lcom/samsung/privilege/util/AddOnPermissions;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;ILcom/samsung/privilege/util/AddOnPermissions;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$2:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$3:I

    iput-object p4, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$4:Lcom/samsung/privilege/util/AddOnPermissions;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/String;Landroid/content/Context;ILcom/samsung/privilege/util/AddOnPermissions;)Lrx/functions/Action1;
    .registers 5

    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/samsung/privilege/util/AddOnPermissions;)V

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/String;Landroid/content/Context;ILcom/samsung/privilege/util/AddOnPermissions;)Lrx/functions/Action1;
    .registers 5

    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/samsung/privilege/util/AddOnPermissions;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$2:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$3:I

    iget-object v3, p0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$4;->arg$4:Lcom/samsung/privilege/util/AddOnPermissions;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/privilege/util/RxPermissionUtils;->access$lambda$3(Ljava/lang/String;Landroid/content/Context;ILcom/samsung/privilege/util/AddOnPermissions;Ljava/lang/Boolean;)V

    return-void
.end method

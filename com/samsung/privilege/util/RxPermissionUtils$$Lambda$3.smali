.class final synthetic Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action0;


# static fields
.field private static final a:Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;

    invoke-direct {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;-><init>()V

    sput-object v0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;->a:Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lrx/functions/Action0;
    .registers 1

    sget-object v0, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;->a:Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcom/samsung/privilege/util/RxPermissionUtils;->b()V

    return-void
.end method

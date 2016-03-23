.class final synthetic Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final instance:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;-><init>()V

    sput-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;->instance:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/view/View$OnLongClickListener;
    .registers 1

    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;->instance:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->access$lambda$0(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

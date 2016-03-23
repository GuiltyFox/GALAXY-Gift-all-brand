.class final synthetic Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/bzbs/marketplace/fragment/ReviewFragment;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$1:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iput p2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$2:I

    iput p3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$3:I

    iput-object p4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$4:Landroid/content/Intent;

    return-void
.end method

.method private static get$Lambda(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;)Lrx/functions/Action1;
    .registers 5

    new-instance v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;)Lrx/functions/Action1;
    .registers 5

    new-instance v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$1:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$2:I

    iget v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$3:I

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->arg$4:Landroid/content/Intent;

    check-cast p1, Ljava/lang/Boolean;

    # invokes: Lcom/bzbs/marketplace/fragment/ReviewFragment;->lambda$onActivityResult$1(IILandroid/content/Intent;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2, v3, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->access$lambda$0(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;Ljava/lang/Boolean;)V

    return-void
.end method

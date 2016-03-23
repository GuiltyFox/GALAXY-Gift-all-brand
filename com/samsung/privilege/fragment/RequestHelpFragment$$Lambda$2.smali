.class final synthetic Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/samsung/privilege/fragment/RequestHelpFragment;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$1:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iput p2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$2:I

    iput p3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$3:I

    iput-object p4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$4:Landroid/content/Intent;

    return-void
.end method

.method private static get$Lambda(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)Lrx/functions/Action1;
    .registers 5

    new-instance v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)Lrx/functions/Action1;
    .registers 5

    new-instance v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$1:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$2:I

    iget v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$3:I

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->arg$4:Landroid/content/Intent;

    check-cast p1, Ljava/lang/Boolean;

    # invokes: Lcom/samsung/privilege/fragment/RequestHelpFragment;->lambda$onActivityResult$9(IILandroid/content/Intent;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->access$lambda$1(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;Ljava/lang/Boolean;)V

    return-void
.end method

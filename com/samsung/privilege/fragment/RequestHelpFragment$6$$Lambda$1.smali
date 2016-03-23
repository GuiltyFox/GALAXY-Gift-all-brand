.class final synthetic Lcom/samsung/privilege/fragment/RequestHelpFragment$6$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/samsung/privilege/fragment/RequestHelpFragment$6;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$6;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$6$$Lambda$1;->arg$1:Lcom/samsung/privilege/fragment/RequestHelpFragment$6;

    return-void
.end method

.method private static get$Lambda(Lcom/samsung/privilege/fragment/RequestHelpFragment$6;)Lrx/functions/Action1;
    .registers 2

    new-instance v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$6$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$6$$Lambda$1;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$6;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/samsung/privilege/fragment/RequestHelpFragment$6;)Lrx/functions/Action1;
    .registers 2

    new-instance v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$6$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$6$$Lambda$1;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$6;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$6$$Lambda$1;->arg$1:Lcom/samsung/privilege/fragment/RequestHelpFragment$6;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment$6;->access$lambda$0(Lcom/samsung/privilege/fragment/RequestHelpFragment$6;Ljava/lang/Boolean;)V

    return-void
.end method

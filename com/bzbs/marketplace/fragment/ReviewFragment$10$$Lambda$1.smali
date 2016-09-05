.class final synthetic Lcom/bzbs/marketplace/fragment/ReviewFragment$10$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final a:Lcom/bzbs/marketplace/fragment/ReviewFragment$10;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10$$Lambda$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment$10;

    return-void
.end method

.method public static a(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;)Lrx/functions/Action1;
    .registers 2

    new-instance v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10$$Lambda$1;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10$$Lambda$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment$10;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;Ljava/lang/Boolean;)V

    return-void
.end method

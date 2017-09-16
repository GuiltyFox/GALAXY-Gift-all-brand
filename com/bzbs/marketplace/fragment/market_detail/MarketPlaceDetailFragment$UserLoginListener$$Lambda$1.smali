.class final synthetic Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$$Lambda$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$$Lambda$1;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$$Lambda$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$$Lambda$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$$Lambda$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)V

    return-void
.end method

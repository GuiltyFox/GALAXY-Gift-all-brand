.class Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;
.super Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;
.source "AddMoneyCredit2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 214
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 217
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wheelAmount:onSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 220
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v0, "#,###,###.##"

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    iget-object v2, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    invoke-static {v2, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Lcom/bzbs/bean/Campaign;)Lcom/bzbs/bean/Campaign;

    .line 228
    :cond_56
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5f} :catch_64

    .line 232
    :goto_5f
    return-void

    .line 219
    :cond_60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 229
    :catch_64
    move-exception v0

    goto :goto_5f
.end method

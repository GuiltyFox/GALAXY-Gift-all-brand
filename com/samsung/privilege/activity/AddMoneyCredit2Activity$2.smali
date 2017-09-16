.class Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$2;
.super Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;
.source "AddMoneyCredit2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$2;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-direct {p0}, Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 278
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wheelQuantity:onSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$2;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0, p2}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$2;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    .line 285
    :goto_25
    return-void

    .line 282
    :catch_26
    move-exception v0

    goto :goto_25
.end method

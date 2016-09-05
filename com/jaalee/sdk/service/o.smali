.class final Lcom/jaalee/sdk/service/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/jaalee/sdk/Beacon;

    check-cast p2, Lcom/jaalee/sdk/Beacon;

    invoke-static {p1}, Lcom/jaalee/sdk/Utils;->a(Lcom/jaalee/sdk/Beacon;)D

    move-result-wide v0

    invoke-static {p2}, Lcom/jaalee/sdk/Utils;->a(Lcom/jaalee/sdk/Beacon;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

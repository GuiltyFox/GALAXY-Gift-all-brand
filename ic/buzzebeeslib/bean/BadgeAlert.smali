.class public Lic/buzzebeeslib/bean/BadgeAlert;
.super Ljava/lang/Object;
.source "BadgeAlert.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public points:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "points"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lic/buzzebeeslib/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lic/buzzebeeslib/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 30
    iput p3, p0, Lic/buzzebeeslib/bean/BadgeAlert;->level:I

    .line 31
    iput p4, p0, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "id"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 22
    const-string v0, "name"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 23
    const-string v0, "level"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/BadgeAlert;->level:I

    .line 24
    const-string v0, "points"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    .line 25
    return-void
.end method

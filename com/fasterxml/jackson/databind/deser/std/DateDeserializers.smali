.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.super Ljava/lang/Object;
.source "DateDeserializers.java"


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 30
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    .line 32
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/Calendar;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/util/GregorianCalendar;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/sql/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/sql/Timestamp;

    aput-object v3, v1, v2

    .line 39
    array-length v2, v1

    :goto_24
    if-ge v0, v2, :cond_34

    aget-object v3, v1, v0

    .line 40
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 42
    :cond_34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 48
    const-class v0, Ljava/util/Calendar;

    if-ne p0, v0, :cond_12

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>()V

    .line 64
    :goto_11
    return-object v0

    .line 51
    :cond_12
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_19

    .line 52
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    goto :goto_11

    .line 54
    :cond_19
    const-class v0, Ljava/sql/Date;

    if-ne p0, v0, :cond_23

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;-><init>()V

    goto :goto_11

    .line 57
    :cond_23
    const-class v0, Ljava/sql/Timestamp;

    if-ne p0, v0, :cond_2d

    .line 58
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;-><init>()V

    goto :goto_11

    .line 60
    :cond_2d
    const-class v0, Ljava/util/GregorianCalendar;

    if-ne p0, v0, :cond_39

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    goto :goto_11

    .line 64
    :cond_39
    const/4 v0, 0x0

    goto :goto_11
.end method

require 'minitest/autorun'
require 'minitest/pride'
require './lib/day_1_report_repair'

class ReportRepairTest < MiniTest::Test

  def setup
    @expense_report_1 = [1721, 979, 366, 299, 675, 1456]
    @expense_report_2 = [1686, 1983, 1801, 1890, 1910, 1722, 1571, 1952, 1602, 1551, 1144, 1208, 1335, 1914, 1656, 1515, 1600, 1520, 1683, 1679, 1800, 1889, 1717, 1592, 1617, 1756, 1646, 1596, 1874, 1595, 1660, 1748, 1946, 1734, 1852, 2006, 1685, 1668, 1607, 1677, 403, 1312, 1828, 1627, 1925, 1657, 1536, 1522, 1557, 1636, 1586, 1654, 1541, 1363, 1844, 1951, 1765, 1872, 696, 1764, 1718, 1540, 1493, 1947, 1786, 1548, 1981, 1861, 1589, 1707, 1915, 1755, 1906, 1911, 1628, 1980, 1986, 1780, 1645, 741, 1727, 524, 1690, 1732, 1956, 1523, 1534, 1498, 1510, 372, 1777, 1585, 1614, 1712, 1650, 702, 1773, 1713, 1797, 1691, 1758, 1973, 1560, 1615, 1933, 1281, 1899, 1845, 1752, 1542, 1694, 1950, 1879, 1684, 1809, 1988, 1978, 1843, 1730, 1377, 1507, 1506, 1566, 935, 1851, 1995, 1796, 1900, 896, 171, 1728, 1635, 1810, 2003, 1580, 1789, 1709, 2007, 1639, 1726, 1537, 1976, 1538, 1544, 1626, 1876, 1840, 1953, 1710, 1661, 1563, 1836, 1358, 1550, 1112, 1832, 1555, 1394, 1912, 1884, 1524, 1689, 1775, 1724, 1366, 1966, 1549, 1931, 1975, 1500, 1667, 1674, 1771, 1631, 1662, 1902, 1970, 1864, 2004, 2010, 504, 1714, 1917, 1907, 1704, 1501, 1812, 1349, 1577, 1638, 1886, 1157, 1761, 1676, 1731, 2001, 1261, 1154, 1769, 1529]
    @report_repair_1 = ReportRepair.new(@expense_report_1)
    @report_repair_2 = ReportRepair.new(@expense_report_2)
  end

  def test_it_exists_with_attributes
    assert_instance_of ReportRepair, @report_repair_1
    assert_nil @report_repair_1.value_1
    assert_nil @report_repair_1.value_2
    assert_equal @expense_report_1, @report_repair_1.expense_report
    assert_instance_of ReportRepair, @report_repair_2
    assert_nil @report_repair_2.value_1
    assert_nil @report_repair_2.value_2
    assert_equal @expense_report_2, @report_repair_2.expense_report
  end

  def test_it_can_get_expense_report_repair
    assert_equal 514579, @report_repair_1.expense_report_repair
    assert_equal 651651, @report_repair_2.expense_report_repair
  end

  def test_it_can_get_expense_value_1_and_2
    @report_repair_1.expense_report_repair
    assert_equal 299, @report_repair_1.value_1
    assert_equal 1721, @report_repair_1.value_2
    @report_repair_2.expense_report_repair
    assert_equal 403, @report_repair_2.value_1
    assert_equal 1617, @report_repair_2.value_2
  end
end
